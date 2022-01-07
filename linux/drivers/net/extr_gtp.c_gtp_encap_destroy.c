
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __gtp_encap_destroy (struct sock*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void gtp_encap_destroy(struct sock *sk)
{
 rtnl_lock();
 __gtp_encap_destroy(sk);
 rtnl_unlock();
}
