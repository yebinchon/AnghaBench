
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int rx_dma_csr; } ;


 int MSGDMA_CSR_STAT_IRQ ;
 int csrwr32 (int ,int ,int ) ;
 int msgdma_csroffs (int ) ;
 int status ;

void msgdma_clear_rxirq(struct altera_tse_private *priv)
{
 csrwr32(MSGDMA_CSR_STAT_IRQ, priv->rx_dma_csr, msgdma_csroffs(status));
}
