
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_state; } ;
struct pppox_sock {int dummy; } ;


 int EBADF ;
 int PPPOX_DEAD ;
 int SOCK_DEAD ;
 int del_chan (struct pppox_sock*) ;
 int lock_sock (struct sock*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int pppox_unbind_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int pptp_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct pppox_sock *po;
 int error = 0;

 if (!sk)
  return 0;

 lock_sock(sk);

 if (sock_flag(sk, SOCK_DEAD)) {
  release_sock(sk);
  return -EBADF;
 }

 po = pppox_sk(sk);
 del_chan(po);
 synchronize_rcu();

 pppox_unbind_sock(sk);
 sk->sk_state = PPPOX_DEAD;

 sock_orphan(sk);
 sock->sk = ((void*)0);

 release_sock(sk);
 sock_put(sk);

 return error;
}
