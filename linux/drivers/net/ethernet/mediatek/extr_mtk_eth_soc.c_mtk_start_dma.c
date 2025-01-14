
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_eth {TYPE_1__* soc; } ;
struct TYPE_2__ {int caps; } ;


 int MTK_DMA_SIZE_16DWORDS ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_MULTI_EN ;
 int MTK_NDP_CO_PRO ;
 int MTK_PDMA_GLO_CFG ;
 int MTK_PDMA_SIZE_8DWORDS ;
 int MTK_QDMA ;
 int MTK_QDMA_GLO_CFG ;
 int MTK_RX_2B_OFFSET ;
 int MTK_RX_BT_32DWORDS ;
 int MTK_RX_DMA_EN ;
 int MTK_TX_DMA_EN ;
 int MTK_TX_WB_DDONE ;
 int NET_IP_ALIGN ;
 int mtk_dma_free (struct mtk_eth*) ;
 int mtk_dma_init (struct mtk_eth*) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;

__attribute__((used)) static int mtk_start_dma(struct mtk_eth *eth)
{
 u32 rx_2b_offset = (NET_IP_ALIGN == 2) ? MTK_RX_2B_OFFSET : 0;
 int err;

 err = mtk_dma_init(eth);
 if (err) {
  mtk_dma_free(eth);
  return err;
 }

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {
  mtk_w32(eth,
   MTK_TX_WB_DDONE | MTK_TX_DMA_EN |
   MTK_DMA_SIZE_16DWORDS | MTK_NDP_CO_PRO |
   MTK_RX_DMA_EN | MTK_RX_2B_OFFSET |
   MTK_RX_BT_32DWORDS,
   MTK_QDMA_GLO_CFG);

  mtk_w32(eth,
   MTK_RX_DMA_EN | rx_2b_offset |
   MTK_RX_BT_32DWORDS | MTK_MULTI_EN,
   MTK_PDMA_GLO_CFG);
 } else {
  mtk_w32(eth, MTK_TX_WB_DDONE | MTK_TX_DMA_EN | MTK_RX_DMA_EN |
   MTK_MULTI_EN | MTK_PDMA_SIZE_8DWORDS,
   MTK_PDMA_GLO_CFG);
 }

 return 0;
}
