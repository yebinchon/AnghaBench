
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int reconfig_sync_present; int reconfig_lock; } ;


 int nfp_net_reconfig_sync_enter (struct nfp_net*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nfp_net_reconfig_wait_posted(struct nfp_net *nn)
{
 nfp_net_reconfig_sync_enter(nn);

 spin_lock_bh(&nn->reconfig_lock);
 nn->reconfig_sync_present = 0;
 spin_unlock_bh(&nn->reconfig_lock);
}
