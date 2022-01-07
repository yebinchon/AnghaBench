
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int reconfig_timer_active; int reconfig_timer; int reconfig_posted; } ;


 int HZ ;
 int NFP_NET_POLL_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int nfp_net_reconfig_start (struct nfp_net*,int ) ;

__attribute__((used)) static void nfp_net_reconfig_start_async(struct nfp_net *nn, u32 update)
{
 update |= nn->reconfig_posted;
 nn->reconfig_posted = 0;

 nfp_net_reconfig_start(nn, update);

 nn->reconfig_timer_active = 1;
 mod_timer(&nn->reconfig_timer, jiffies + NFP_NET_POLL_TIMEOUT * HZ);
}
