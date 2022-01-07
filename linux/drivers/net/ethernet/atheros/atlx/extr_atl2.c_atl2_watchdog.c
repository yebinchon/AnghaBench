
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct atl2_adapter {int watchdog_timer; TYPE_2__* netdev; int stats_lock; int hw; int flags; } ;
struct TYPE_3__ {int rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 scalar_t__ ATL2_READ_REG (int *,int ) ;
 int HZ ;
 int REG_STS_RXD_OV ;
 int REG_STS_RXS_OV ;
 int __ATL2_DOWN ;
 struct atl2_adapter* adapter ;
 struct atl2_adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;
 int watchdog_timer ;

__attribute__((used)) static void atl2_watchdog(struct timer_list *t)
{
 struct atl2_adapter *adapter = from_timer(adapter, t, watchdog_timer);

 if (!test_bit(__ATL2_DOWN, &adapter->flags)) {
  u32 drop_rxd, drop_rxs;
  unsigned long flags;

  spin_lock_irqsave(&adapter->stats_lock, flags);
  drop_rxd = ATL2_READ_REG(&adapter->hw, REG_STS_RXD_OV);
  drop_rxs = ATL2_READ_REG(&adapter->hw, REG_STS_RXS_OV);
  spin_unlock_irqrestore(&adapter->stats_lock, flags);

  adapter->netdev->stats.rx_over_errors += drop_rxd + drop_rxs;


  mod_timer(&adapter->watchdog_timer,
     round_jiffies(jiffies + 4 * HZ));
 }
}
