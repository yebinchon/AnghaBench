
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct nfp_net {int reconfig_sync_present; int reconfig_timer_active; TYPE_1__ reconfig_timer; int reconfig_lock; scalar_t__ reconfig_posted; } ;


 int HZ ;
 int NFP_NET_POLL_TIMEOUT ;
 int WARN_ON (int) ;
 int del_timer_sync (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int nfp_net_reconfig_start (struct nfp_net*,scalar_t__) ;
 int nfp_net_reconfig_wait (struct nfp_net*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nfp_net_reconfig_sync_enter(struct nfp_net *nn)
{
 bool cancelled_timer = 0;
 u32 pre_posted_requests;

 spin_lock_bh(&nn->reconfig_lock);

 WARN_ON(nn->reconfig_sync_present);
 nn->reconfig_sync_present = 1;

 if (nn->reconfig_timer_active) {
  nn->reconfig_timer_active = 0;
  cancelled_timer = 1;
 }
 pre_posted_requests = nn->reconfig_posted;
 nn->reconfig_posted = 0;

 spin_unlock_bh(&nn->reconfig_lock);

 if (cancelled_timer) {
  del_timer_sync(&nn->reconfig_timer);
  nfp_net_reconfig_wait(nn, nn->reconfig_timer.expires);
 }


 if (pre_posted_requests) {
  nfp_net_reconfig_start(nn, pre_posted_requests);
  nfp_net_reconfig_wait(nn, jiffies + HZ * NFP_NET_POLL_TIMEOUT);
 }
}
