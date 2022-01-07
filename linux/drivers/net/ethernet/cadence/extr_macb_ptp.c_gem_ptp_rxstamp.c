
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; int tv_sec; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct macb_dma_desc_ptp {int ts_2; int ts_1; } ;
struct macb_dma_desc {int addr; } ;
struct macb {int dummy; } ;


 int DMA_RXVALID ;
 scalar_t__ GEM_BFEXT (int ,int ) ;
 int gem_hw_timestamp (struct macb*,int ,int ,struct timespec64*) ;
 int ktime_set (int ,int ) ;
 struct macb_dma_desc_ptp* macb_ptp_desc (struct macb*,struct macb_dma_desc*) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

void gem_ptp_rxstamp(struct macb *bp, struct sk_buff *skb,
       struct macb_dma_desc *desc)
{
 struct skb_shared_hwtstamps *shhwtstamps = skb_hwtstamps(skb);
 struct macb_dma_desc_ptp *desc_ptp;
 struct timespec64 ts;

 if (GEM_BFEXT(DMA_RXVALID, desc->addr)) {
  desc_ptp = macb_ptp_desc(bp, desc);
  gem_hw_timestamp(bp, desc_ptp->ts_1, desc_ptp->ts_2, &ts);
  memset(shhwtstamps, 0, sizeof(struct skb_shared_hwtstamps));
  shhwtstamps->hwtstamp = ktime_set(ts.tv_sec, ts.tv_nsec);
 }
}
