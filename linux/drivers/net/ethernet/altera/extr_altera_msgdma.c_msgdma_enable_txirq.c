
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int tx_dma_csr; } ;


 int MSGDMA_CSR_CTL_GLOBAL_INTR ;
 int control ;
 int msgdma_csroffs (int ) ;
 int tse_set_bit (int ,int ,int ) ;

void msgdma_enable_txirq(struct altera_tse_private *priv)
{
 tse_set_bit(priv->tx_dma_csr, msgdma_csroffs(control),
      MSGDMA_CSR_CTL_GLOBAL_INTR);
}
