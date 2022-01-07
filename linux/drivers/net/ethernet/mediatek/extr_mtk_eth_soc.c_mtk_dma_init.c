
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_eth {TYPE_1__* soc; scalar_t__ hwlro; } ;
struct TYPE_2__ {int caps; } ;


 int EBUSY ;
 int FC_THRES_DROP_EN ;
 int FC_THRES_DROP_MODE ;
 int FC_THRES_MIN ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_MAX_RX_RING_NUM ;
 int MTK_QDMA ;
 int MTK_QDMA_FC_THRES ;
 int MTK_QDMA_HRED2 ;
 int MTK_RX_FLAGS_HWLRO ;
 int MTK_RX_FLAGS_NORMAL ;
 int MTK_RX_FLAGS_QDMA ;
 scalar_t__ mtk_dma_busy_wait (struct mtk_eth*) ;
 int mtk_hwlro_rx_init (struct mtk_eth*) ;
 int mtk_init_fq_dma (struct mtk_eth*) ;
 int mtk_rx_alloc (struct mtk_eth*,int,int ) ;
 int mtk_tx_alloc (struct mtk_eth*) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;

__attribute__((used)) static int mtk_dma_init(struct mtk_eth *eth)
{
 int err;
 u32 i;

 if (mtk_dma_busy_wait(eth))
  return -EBUSY;

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {



  err = mtk_init_fq_dma(eth);
  if (err)
   return err;
 }

 err = mtk_tx_alloc(eth);
 if (err)
  return err;

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {
  err = mtk_rx_alloc(eth, 0, MTK_RX_FLAGS_QDMA);
  if (err)
   return err;
 }

 err = mtk_rx_alloc(eth, 0, MTK_RX_FLAGS_NORMAL);
 if (err)
  return err;

 if (eth->hwlro) {
  for (i = 1; i < MTK_MAX_RX_RING_NUM; i++) {
   err = mtk_rx_alloc(eth, i, MTK_RX_FLAGS_HWLRO);
   if (err)
    return err;
  }
  err = mtk_hwlro_rx_init(eth);
  if (err)
   return err;
 }

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_QDMA)) {



  mtk_w32(eth, FC_THRES_DROP_MODE | FC_THRES_DROP_EN |
   FC_THRES_MIN, MTK_QDMA_FC_THRES);
  mtk_w32(eth, 0x0, MTK_QDMA_HRED2);
 }

 return 0;
}
