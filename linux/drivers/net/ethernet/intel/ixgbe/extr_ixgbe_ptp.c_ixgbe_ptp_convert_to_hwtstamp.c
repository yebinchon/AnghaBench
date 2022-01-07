
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int tv_sec; int tv_nsec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int tmreg_lock; int hw_tc; TYPE_2__ hw; } ;





 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int) ;
 int timespec64_to_ns (struct timespec64*) ;

__attribute__((used)) static void ixgbe_ptp_convert_to_hwtstamp(struct ixgbe_adapter *adapter,
       struct skb_shared_hwtstamps *hwtstamp,
       u64 timestamp)
{
 unsigned long flags;
 struct timespec64 systime;
 u64 ns;

 memset(hwtstamp, 0, sizeof(*hwtstamp));

 switch (adapter->hw.mac.type) {
 case 130:
 case 129:
 case 128:





  systime.tv_sec = timestamp >> 32;
  systime.tv_nsec = timestamp & 0xFFFFFFFF;

  timestamp = timespec64_to_ns(&systime);
  break;
 default:
  break;
 }

 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 ns = timecounter_cyc2time(&adapter->hw_tc, timestamp);
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

 hwtstamp->hwtstamp = ns_to_ktime(ns);
}
