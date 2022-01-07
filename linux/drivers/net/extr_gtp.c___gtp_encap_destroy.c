
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {struct gtp_dev* sk_user_data; } ;
struct gtp_dev {int * sk1u; struct sock* sk0; } ;
struct TYPE_2__ {scalar_t__ encap_type; } ;


 int lock_sock (struct sock*) ;
 int rcu_assign_sk_user_data (struct sock*,int *) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;

__attribute__((used)) static void __gtp_encap_destroy(struct sock *sk)
{
 struct gtp_dev *gtp;

 lock_sock(sk);
 gtp = sk->sk_user_data;
 if (gtp) {
  if (gtp->sk0 == sk)
   gtp->sk0 = ((void*)0);
  else
   gtp->sk1u = ((void*)0);
  udp_sk(sk)->encap_type = 0;
  rcu_assign_sk_user_data(sk, ((void*)0));
  sock_put(sk);
 }
 release_sock(sk);
}
