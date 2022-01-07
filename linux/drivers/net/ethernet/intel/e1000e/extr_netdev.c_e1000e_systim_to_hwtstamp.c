
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct e1000_adapter {int systim_lock; int tc; } ;


 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int ) ;

__attribute__((used)) static void e1000e_systim_to_hwtstamp(struct e1000_adapter *adapter,
          struct skb_shared_hwtstamps *hwtstamps,
          u64 systim)
{
 u64 ns;
 unsigned long flags;

 spin_lock_irqsave(&adapter->systim_lock, flags);
 ns = timecounter_cyc2time(&adapter->tc, systim);
 spin_unlock_irqrestore(&adapter->systim_lock, flags);

 memset(hwtstamps, 0, sizeof(*hwtstamps));
 hwtstamps->hwtstamp = ns_to_ktime(ns);
}
