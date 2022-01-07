
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int page_lock; } ;


 int MTK_RX_DMA_BUSY ;
 int MTK_RX_DMA_EN ;
 int MTK_TX_DMA_BUSY ;
 int MTK_TX_DMA_EN ;
 int MTK_TX_WB_DDONE ;
 int msleep (int) ;
 int mtk_r32 (struct mtk_eth*,int) ;
 int mtk_w32 (struct mtk_eth*,int,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mtk_stop_dma(struct mtk_eth *eth, u32 glo_cfg)
{
 u32 val;
 int i;


 spin_lock_bh(&eth->page_lock);
 val = mtk_r32(eth, glo_cfg);
 mtk_w32(eth, val & ~(MTK_TX_WB_DDONE | MTK_RX_DMA_EN | MTK_TX_DMA_EN),
  glo_cfg);
 spin_unlock_bh(&eth->page_lock);


 for (i = 0; i < 10; i++) {
  val = mtk_r32(eth, glo_cfg);
  if (val & (MTK_TX_DMA_BUSY | MTK_RX_DMA_BUSY)) {
   msleep(20);
   continue;
  }
  break;
 }
}
