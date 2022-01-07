
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_tse_private {int tx_dma_desc; } ;


 int SGDMA_CONTROL_HW_OWNED ;
 int control ;
 int csrrd8 (int ,int ) ;
 scalar_t__ dequeue_tx (struct altera_tse_private*) ;
 int sgdma_descroffs (int ) ;
 int sgdma_txbusy (struct altera_tse_private*) ;

u32 sgdma_tx_completions(struct altera_tse_private *priv)
{
 u32 ready = 0;

 if (!sgdma_txbusy(priv) &&
     ((csrrd8(priv->tx_dma_desc, sgdma_descroffs(control))
      & SGDMA_CONTROL_HW_OWNED) == 0) &&
     (dequeue_tx(priv))) {
  ready = 1;
 }

 return ready;
}
