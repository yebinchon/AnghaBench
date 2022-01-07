
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __gtp_encap_destroy (struct sock*) ;

__attribute__((used)) static void gtp_encap_disable_sock(struct sock *sk)
{
 if (!sk)
  return;

 __gtp_encap_destroy(sk);
}
