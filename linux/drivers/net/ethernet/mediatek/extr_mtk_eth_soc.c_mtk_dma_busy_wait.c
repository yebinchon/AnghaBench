
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_eth {int dev; TYPE_1__* soc; } ;
struct TYPE_2__ {int caps; } ;


 scalar_t__ MTK_DMA_BUSY_TIMEOUT ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_PDMA_GLO_CFG ;
 int MTK_QDMA ;
 int MTK_QDMA_GLO_CFG ;
 int MTK_RX_DMA_BUSY ;
 int MTK_TX_DMA_BUSY ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static int mtk_dma_busy_wait(struct mtk_eth *eth)
{
 unsigned long t_start = jiffies;

 while (1) {
  if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {
   if (!(mtk_r32(eth, MTK_QDMA_GLO_CFG) &
         (MTK_RX_DMA_BUSY | MTK_TX_DMA_BUSY)))
    return 0;
  } else {
   if (!(mtk_r32(eth, MTK_PDMA_GLO_CFG) &
         (MTK_RX_DMA_BUSY | MTK_TX_DMA_BUSY)))
    return 0;
  }

  if (time_after(jiffies, t_start + MTK_DMA_BUSY_TIMEOUT))
   break;
 }

 dev_err(eth->dev, "DMA init timeout\n");
 return -1;
}
