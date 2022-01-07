
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int reconfig_lock; int reconfig_posted; int reconfig_timer_active; scalar_t__ reconfig_sync_present; } ;


 scalar_t__ nfp_net_reconfig_check_done (struct nfp_net*,int) ;
 int nfp_net_reconfig_start_async (struct nfp_net*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nfp_net_reconfig_post(struct nfp_net *nn, u32 update)
{
 spin_lock_bh(&nn->reconfig_lock);


 if (nn->reconfig_sync_present) {
  nn->reconfig_posted |= update;
  goto done;
 }


 if (!nn->reconfig_timer_active ||
     nfp_net_reconfig_check_done(nn, 0))
  nfp_net_reconfig_start_async(nn, update);
 else
  nn->reconfig_posted |= update;
done:
 spin_unlock_bh(&nn->reconfig_lock);
}
