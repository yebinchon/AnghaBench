
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dma_reg {int dmandptr; int dmadptr; int dmas; int dmac; } ;


 int DMA_CHAN_RUN_BIT ;
 int DMA_STAT_HALT ;
 int netif_trans_update (struct net_device*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static inline void korina_abort_dma(struct net_device *dev,
     struct dma_reg *ch)
{
 if (readl(&ch->dmac) & DMA_CHAN_RUN_BIT) {
  writel(0x10, &ch->dmac);

  while (!(readl(&ch->dmas) & DMA_STAT_HALT))
   netif_trans_update(dev);

  writel(0, &ch->dmas);
 }

 writel(0, &ch->dmadptr);
 writel(0, &ch->dmandptr);
}
