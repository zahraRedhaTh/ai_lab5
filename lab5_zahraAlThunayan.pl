male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham,herb).
parent(abraham,homer).
parent(mona,homer).

parent(clancy,marge).
parent(clancy,patty).
parent(clancy,selma).
parent(jackie,marge).
parent(jackie,patty).
parent(jackie,selma).

parent(homer,bart).
parent(homer,lisa).
parent(homer,maggie).
parent(marge,bart).
parent(marge,lisa).
parent(marge,maggie).

parent(selma,ling).


father(F,S):-male(F),parent(F,S).
mother(M,S):-female(M),parent(M,S).
son(S,P):-male(S),parent(P,S).
daughter(D,P):-female(D),parent(P,D).
sibling(X,Y):-parent(P,X),parent(P,Y),X\=Y.
brother(B,S):-male(B),sibling(B,S).
sister(Sis,S):-female(Sis),sibling(Sis,S).

grandparent(X,Z):-
    parent(X,P),parent(P,Z).

grandfather(G,X):-
    male(G),parent(G,B),parent(B,X).

aunt(A,X):-
    female(A),parent(P,X),sibling(P,A).

uncle(U,X):-
    male(U),parent(P,X),sibling(P,U).

cousin(C,X):-
    parent(P,C),parent(Pp,X),sibling(P,Pp).

ancestor(X,Z):-
    grandparent(X,Z).

ancestor(X,Z):-
    grandparent(X,Y),
    ancestor(Y,Z).




