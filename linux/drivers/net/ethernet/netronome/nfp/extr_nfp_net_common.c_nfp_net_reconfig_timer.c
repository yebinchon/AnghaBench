
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nfp_net {int reconfig_timer_active; int reconfig_lock; scalar_t__ reconfig_posted; scalar_t__ reconfig_sync_present; } ;


 struct nfp_net* from_timer (int ,struct timer_list*,int ) ;
 int nfp_net_reconfig_check_done (struct nfp_net*,int) ;
 int nfp_net_reconfig_start_async (struct nfp_net*,int ) ;
 struct nfp_net* nn ;
 int reconfig_timer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nfp_net_reconfig_timer(struct timer_list *t)
{
 struct nfp_net *nn = from_timer(nn, t, reconfig_timer);

 spin_lock_bh(&nn->reconfig_lock);

 nn->reconfig_timer_active = 0;


 if (nn->reconfig_sync_present)
  goto done;


 nfp_net_reconfig_check_done(nn, 1);

 if (nn->reconfig_posted)
  nfp_net_reconfig_start_async(nn, 0);
done:
 spin_unlock_bh(&nn->reconfig_lock);
}
