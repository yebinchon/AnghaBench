
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int dummy; } ;


 int MTK_LRO_CTRL_DW2_CFG (int) ;
 int MTK_LRO_RING_RELINQUISH_DONE ;
 int MTK_LRO_RING_RELINQUISH_REQ ;
 int MTK_MAX_RX_RING_NUM ;
 int MTK_PDMA_LRO_CTRL_DW0 ;
 int msleep (int) ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 int mtk_w32 (struct mtk_eth*,int ,int ) ;

__attribute__((used)) static void mtk_hwlro_rx_uninit(struct mtk_eth *eth)
{
 int i;
 u32 val;


 mtk_w32(eth, MTK_LRO_RING_RELINQUISH_REQ, MTK_PDMA_LRO_CTRL_DW0);


 for (i = 0; i < 10; i++) {
  val = mtk_r32(eth, MTK_PDMA_LRO_CTRL_DW0);
  if (val & MTK_LRO_RING_RELINQUISH_DONE) {
   msleep(20);
   continue;
  }
  break;
 }


 for (i = 1; i < MTK_MAX_RX_RING_NUM; i++)
  mtk_w32(eth, 0, MTK_LRO_CTRL_DW2_CFG(i));


 mtk_w32(eth, 0, MTK_PDMA_LRO_CTRL_DW0);
}
