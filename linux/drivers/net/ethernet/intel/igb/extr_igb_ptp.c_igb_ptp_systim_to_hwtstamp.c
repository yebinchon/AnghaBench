
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct igb_adapter {int tmreg_lock; int tc; TYPE_2__ hw; } ;
 int ktime_set (int,int) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int) ;

__attribute__((used)) static void igb_ptp_systim_to_hwtstamp(struct igb_adapter *adapter,
           struct skb_shared_hwtstamps *hwtstamps,
           u64 systim)
{
 unsigned long flags;
 u64 ns;

 switch (adapter->hw.mac.type) {
 case 133:
 case 132:
 case 128:
 case 129:
  spin_lock_irqsave(&adapter->tmreg_lock, flags);

  ns = timecounter_cyc2time(&adapter->tc, systim);

  spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

  memset(hwtstamps, 0, sizeof(*hwtstamps));
  hwtstamps->hwtstamp = ns_to_ktime(ns);
  break;
 case 131:
 case 130:
  memset(hwtstamps, 0, sizeof(*hwtstamps));

  hwtstamps->hwtstamp = ktime_set(systim >> 32,
      systim & 0xFFFFFFFF);
  break;
 default:
  break;
 }
}
