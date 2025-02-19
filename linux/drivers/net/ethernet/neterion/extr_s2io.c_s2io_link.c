
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swStat {scalar_t__ link_up_cnt; void* link_down_time; scalar_t__ link_down_cnt; void* link_up_time; } ;
struct TYPE_4__ {TYPE_1__* stats_info; } ;
struct s2io_nic {int last_link_state; void* start_time; TYPE_2__ mac_control; struct net_device* dev; } ;
struct net_device {int name; } ;
struct TYPE_3__ {struct swStat sw_stat; } ;


 int DBG_PRINT (int ,char*,int ) ;
 int ERR_DBG ;
 int LINK_DOWN ;
 int init_tti (struct s2io_nic*,int) ;
 void* jiffies ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int s2io_stop_all_tx_queue (struct s2io_nic*) ;
 int s2io_wake_all_tx_queue (struct s2io_nic*) ;

__attribute__((used)) static void s2io_link(struct s2io_nic *sp, int link)
{
 struct net_device *dev = sp->dev;
 struct swStat *swstats = &sp->mac_control.stats_info->sw_stat;

 if (link != sp->last_link_state) {
  init_tti(sp, link);
  if (link == LINK_DOWN) {
   DBG_PRINT(ERR_DBG, "%s: Link down\n", dev->name);
   s2io_stop_all_tx_queue(sp);
   netif_carrier_off(dev);
   if (swstats->link_up_cnt)
    swstats->link_up_time =
     jiffies - sp->start_time;
   swstats->link_down_cnt++;
  } else {
   DBG_PRINT(ERR_DBG, "%s: Link Up\n", dev->name);
   if (swstats->link_down_cnt)
    swstats->link_down_time =
     jiffies - sp->start_time;
   swstats->link_up_cnt++;
   netif_carrier_on(dev);
   s2io_wake_all_tx_queue(sp);
  }
 }
 sp->last_link_state = link;
 sp->start_time = jiffies;
}
