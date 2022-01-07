
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int tx_dma_csr; } ;


 int SGDMA_CTRLREG_CLRINT ;
 int control ;
 int sgdma_csroffs (int ) ;
 int tse_set_bit (int ,int ,int ) ;

void sgdma_clear_txirq(struct altera_tse_private *priv)
{
 tse_set_bit(priv->tx_dma_csr, sgdma_csroffs(control),
      SGDMA_CTRLREG_CLRINT);
}
