
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ phy_retry; int phy_retry_expires; scalar_t__ link_up; } ;
struct bnxt {int fw_cap; int flags; scalar_t__ current_interval; int timer; int sp_event; struct net_device* dev; TYPE_1__ link_info; scalar_t__ stats_coal_ticks; int intr_sem; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int BNXT_FLAG_PORT_STATS ;
 int BNXT_FLOW_STATS_SP_EVENT ;
 int BNXT_FW_CAP_ERROR_RECOVERY ;
 int BNXT_PERIODIC_STATS_SP_EVENT ;
 int BNXT_RING_COAL_NOW_SP_EVENT ;
 int BNXT_UPDATE_PHY_SP_EVENT ;
 scalar_t__ atomic_read (int *) ;
 int bnxt_fw_health_check (struct bnxt*) ;
 int bnxt_queue_sp_work (struct bnxt*) ;
 scalar_t__ bnxt_tc_flower_enabled (struct bnxt*) ;
 struct bnxt* bp ;
 struct bnxt* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_warn (struct net_device*,char*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,int ) ;
 int timer ;

__attribute__((used)) static void bnxt_timer(struct timer_list *t)
{
 struct bnxt *bp = from_timer(bp, t, timer);
 struct net_device *dev = bp->dev;

 if (!netif_running(dev))
  return;

 if (atomic_read(&bp->intr_sem) != 0)
  goto bnxt_restart_timer;

 if (bp->fw_cap & BNXT_FW_CAP_ERROR_RECOVERY)
  bnxt_fw_health_check(bp);

 if (bp->link_info.link_up && (bp->flags & BNXT_FLAG_PORT_STATS) &&
     bp->stats_coal_ticks) {
  set_bit(BNXT_PERIODIC_STATS_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
 }

 if (bnxt_tc_flower_enabled(bp)) {
  set_bit(BNXT_FLOW_STATS_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
 }

 if (bp->link_info.phy_retry) {
  if (time_after(jiffies, bp->link_info.phy_retry_expires)) {
   bp->link_info.phy_retry = 0;
   netdev_warn(bp->dev, "failed to update phy settings after maximum retries.\n");
  } else {
   set_bit(BNXT_UPDATE_PHY_SP_EVENT, &bp->sp_event);
   bnxt_queue_sp_work(bp);
  }
 }

 if ((bp->flags & BNXT_FLAG_CHIP_P5) && netif_carrier_ok(dev)) {
  set_bit(BNXT_RING_COAL_NOW_SP_EVENT, &bp->sp_event);
  bnxt_queue_sp_work(bp);
 }
bnxt_restart_timer:
 mod_timer(&bp->timer, jiffies + bp->current_interval);
}
