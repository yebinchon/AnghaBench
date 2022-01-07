
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {int pptp; } ;
struct sockaddr_pppox {TYPE_1__ sa_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct pppox_sock {int dummy; } ;


 int EALREADY ;
 int EBUSY ;
 int EINVAL ;
 int PPPOX_BOUND ;
 int PPPOX_DEAD ;
 scalar_t__ add_chan (struct pppox_sock*,int *) ;
 int lock_sock (struct sock*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int pptp_bind(struct socket *sock, struct sockaddr *uservaddr,
 int sockaddr_len)
{
 struct sock *sk = sock->sk;
 struct sockaddr_pppox *sp = (struct sockaddr_pppox *) uservaddr;
 struct pppox_sock *po = pppox_sk(sk);
 int error = 0;

 if (sockaddr_len < sizeof(struct sockaddr_pppox))
  return -EINVAL;

 lock_sock(sk);

 if (sk->sk_state & PPPOX_DEAD) {
  error = -EALREADY;
  goto out;
 }

 if (sk->sk_state & PPPOX_BOUND) {
  error = -EBUSY;
  goto out;
 }

 if (add_chan(po, &sp->sa_addr.pptp))
  error = -EBUSY;
 else
  sk->sk_state |= PPPOX_BOUND;

out:
 release_sock(sk);
 return error;
}
