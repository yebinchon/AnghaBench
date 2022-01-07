
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int reconfig_sync_present; int reconfig_lock; scalar_t__ reconfig_posted; } ;


 int HZ ;
 int NFP_NET_POLL_TIMEOUT ;
 scalar_t__ jiffies ;
 int nfp_net_reconfig_start (struct nfp_net*,int ) ;
 int nfp_net_reconfig_start_async (struct nfp_net*,int ) ;
 int nfp_net_reconfig_sync_enter (struct nfp_net*) ;
 int nfp_net_reconfig_wait (struct nfp_net*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int __nfp_net_reconfig(struct nfp_net *nn, u32 update)
{
 int ret;

 nfp_net_reconfig_sync_enter(nn);

 nfp_net_reconfig_start(nn, update);
 ret = nfp_net_reconfig_wait(nn, jiffies + HZ * NFP_NET_POLL_TIMEOUT);

 spin_lock_bh(&nn->reconfig_lock);

 if (nn->reconfig_posted)
  nfp_net_reconfig_start_async(nn, 0);

 nn->reconfig_sync_present = 0;

 spin_unlock_bh(&nn->reconfig_lock);

 return ret;
}
