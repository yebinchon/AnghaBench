
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct fec_enet_private {int tmreg_lock; int tc; } ;


 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,unsigned int) ;

__attribute__((used)) static void
fec_enet_hwtstamp(struct fec_enet_private *fep, unsigned ts,
 struct skb_shared_hwtstamps *hwtstamps)
{
 unsigned long flags;
 u64 ns;

 spin_lock_irqsave(&fep->tmreg_lock, flags);
 ns = timecounter_cyc2time(&fep->tc, ts);
 spin_unlock_irqrestore(&fep->tmreg_lock, flags);

 memset(hwtstamps, 0, sizeof(*hwtstamps));
 hwtstamps->hwtstamp = ns_to_ktime(ns);
}
