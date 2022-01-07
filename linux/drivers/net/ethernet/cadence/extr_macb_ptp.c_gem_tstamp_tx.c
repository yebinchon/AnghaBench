
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct macb_dma_desc_ptp {int ts_2; int ts_1; } ;
struct macb {int dummy; } ;
typedef int shhwtstamps ;


 int gem_hw_timestamp (struct macb*,int ,int ,struct timespec64*) ;
 int ktime_set (int ,int ) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int skb_tstamp_tx (struct sk_buff*,struct skb_shared_hwtstamps*) ;

__attribute__((used)) static void gem_tstamp_tx(struct macb *bp, struct sk_buff *skb,
     struct macb_dma_desc_ptp *desc_ptp)
{
 struct skb_shared_hwtstamps shhwtstamps;
 struct timespec64 ts;

 gem_hw_timestamp(bp, desc_ptp->ts_1, desc_ptp->ts_2, &ts);
 memset(&shhwtstamps, 0, sizeof(shhwtstamps));
 shhwtstamps.hwtstamp = ktime_set(ts.tv_sec, ts.tv_nsec);
 skb_tstamp_tx(skb, &shhwtstamps);
}
