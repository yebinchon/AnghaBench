
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_eth {int dummy; } ;


 int MTK_ADMA_MODE ;
 int MTK_HW_LRO_BW_THRE ;
 int MTK_HW_LRO_MAX_AGG_CNT ;
 int MTK_HW_LRO_REFRESH_TIME ;
 int MTK_HW_LRO_REPLACE_DELTA ;
 int MTK_HW_LRO_TIMER_UNIT ;
 int MTK_L3_CKS_UPD_EN ;
 int MTK_LRO_ALT_PKT_CNT_MODE ;
 int MTK_LRO_CTRL_DW1_CFG (int) ;
 int MTK_LRO_CTRL_DW2_CFG (int) ;
 int MTK_LRO_CTRL_DW3_CFG (int) ;
 int MTK_LRO_EN ;
 int MTK_LRO_MIN_RXD_SDL ;
 int MTK_MAX_RX_RING_NUM ;
 int MTK_PDMA_LRO_ALT_REFRESH_TIMER ;
 int MTK_PDMA_LRO_ALT_SCORE_DELTA ;
 int MTK_PDMA_LRO_CTRL_DW0 ;
 int MTK_PDMA_LRO_CTRL_DW2 ;
 int MTK_PDMA_LRO_CTRL_DW3 ;
 int MTK_RING_AGE_TIME_H ;
 int MTK_RING_AGE_TIME_L ;
 int MTK_RING_AUTO_LERAN_MODE ;
 int MTK_RING_MAX_AGG_CNT_H ;
 int MTK_RING_MAX_AGG_CNT_L ;
 int MTK_RING_MAX_AGG_TIME ;
 int MTK_RING_VLD ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;

__attribute__((used)) static int mtk_hwlro_rx_init(struct mtk_eth *eth)
{
 int i;
 u32 ring_ctrl_dw1 = 0, ring_ctrl_dw2 = 0, ring_ctrl_dw3 = 0;
 u32 lro_ctrl_dw0 = 0, lro_ctrl_dw3 = 0;


 ring_ctrl_dw2 |= MTK_RING_AUTO_LERAN_MODE;


 ring_ctrl_dw2 |= MTK_RING_VLD;


 ring_ctrl_dw2 |= MTK_RING_AGE_TIME_H;
 ring_ctrl_dw1 |= MTK_RING_AGE_TIME_L;


 ring_ctrl_dw2 |= MTK_RING_MAX_AGG_TIME;


 ring_ctrl_dw2 |= MTK_RING_MAX_AGG_CNT_L;
 ring_ctrl_dw3 |= MTK_RING_MAX_AGG_CNT_H;

 for (i = 1; i < MTK_MAX_RX_RING_NUM; i++) {
  mtk_w32(eth, ring_ctrl_dw1, MTK_LRO_CTRL_DW1_CFG(i));
  mtk_w32(eth, ring_ctrl_dw2, MTK_LRO_CTRL_DW2_CFG(i));
  mtk_w32(eth, ring_ctrl_dw3, MTK_LRO_CTRL_DW3_CFG(i));
 }


 lro_ctrl_dw0 |= MTK_L3_CKS_UPD_EN;


 lro_ctrl_dw0 |= MTK_LRO_ALT_PKT_CNT_MODE;


 mtk_w32(eth, MTK_HW_LRO_BW_THRE, MTK_PDMA_LRO_CTRL_DW2);


 mtk_w32(eth, MTK_HW_LRO_REPLACE_DELTA, MTK_PDMA_LRO_ALT_SCORE_DELTA);


 mtk_w32(eth, (MTK_HW_LRO_TIMER_UNIT << 16) | MTK_HW_LRO_REFRESH_TIME,
  MTK_PDMA_LRO_ALT_REFRESH_TIMER);


 lro_ctrl_dw3 |= MTK_ADMA_MODE | (MTK_HW_LRO_MAX_AGG_CNT & 0xff);


 lro_ctrl_dw3 |= MTK_LRO_MIN_RXD_SDL;


 lro_ctrl_dw0 |= MTK_LRO_EN;

 mtk_w32(eth, lro_ctrl_dw3, MTK_PDMA_LRO_CTRL_DW3);
 mtk_w32(eth, lro_ctrl_dw0, MTK_PDMA_LRO_CTRL_DW0);

 return 0;
}
