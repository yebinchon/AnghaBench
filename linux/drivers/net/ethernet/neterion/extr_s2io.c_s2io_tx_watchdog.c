
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swStat {int soft_reset_cnt; int watchdog_timer_cnt; } ;
struct TYPE_4__ {TYPE_1__* stats_info; } ;
struct s2io_nic {int rst_timer_task; TYPE_2__ mac_control; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct swStat sw_stat; } ;


 struct s2io_nic* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void s2io_tx_watchdog(struct net_device *dev)
{
 struct s2io_nic *sp = netdev_priv(dev);
 struct swStat *swstats = &sp->mac_control.stats_info->sw_stat;

 if (netif_carrier_ok(dev)) {
  swstats->watchdog_timer_cnt++;
  schedule_work(&sp->rst_timer_task);
  swstats->soft_reset_cnt++;
 }
}
