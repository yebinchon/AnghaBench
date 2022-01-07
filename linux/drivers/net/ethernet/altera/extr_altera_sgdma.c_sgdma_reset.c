
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int rx_dma_csr; int tx_dma_csr; int rxdescmem; int rx_dma_desc; int txdescmem; int tx_dma_desc; } ;


 int SGDMA_CTRLREG_RESET ;
 int control ;
 int csrwr32 (int ,int ,int ) ;
 int memset_io (int ,int ,int ) ;
 int sgdma_csroffs (int ) ;

void sgdma_reset(struct altera_tse_private *priv)
{

 memset_io(priv->tx_dma_desc, 0, priv->txdescmem);
 memset_io(priv->rx_dma_desc, 0, priv->rxdescmem);

 csrwr32(SGDMA_CTRLREG_RESET, priv->tx_dma_csr, sgdma_csroffs(control));
 csrwr32(0, priv->tx_dma_csr, sgdma_csroffs(control));

 csrwr32(SGDMA_CTRLREG_RESET, priv->rx_dma_csr, sgdma_csroffs(control));
 csrwr32(0, priv->rx_dma_csr, sgdma_csroffs(control));
}
