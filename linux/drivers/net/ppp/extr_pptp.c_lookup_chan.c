
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_6__ {TYPE_2__ sin_addr; } ;
struct pptp_opt {TYPE_3__ dst_addr; } ;
struct TYPE_4__ {struct pptp_opt pptp; } ;
struct pppox_sock {TYPE_1__ proto; } ;
typedef scalar_t__ __be32 ;


 int * callid_sock ;
 struct pppox_sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_pppox (struct pppox_sock*) ;
 int sock_hold (int ) ;

__attribute__((used)) static struct pppox_sock *lookup_chan(u16 call_id, __be32 s_addr)
{
 struct pppox_sock *sock;
 struct pptp_opt *opt;

 rcu_read_lock();
 sock = rcu_dereference(callid_sock[call_id]);
 if (sock) {
  opt = &sock->proto.pptp;
  if (opt->dst_addr.sin_addr.s_addr != s_addr)
   sock = ((void*)0);
  else
   sock_hold(sk_pppox(sock));
 }
 rcu_read_unlock();

 return sock;
}
