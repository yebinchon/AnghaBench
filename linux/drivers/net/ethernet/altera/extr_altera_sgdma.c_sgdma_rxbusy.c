
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int rx_dma_csr; } ;


 int SGDMA_STSREG_BUSY ;
 int csrrd32 (int ,int ) ;
 int sgdma_csroffs (int ) ;
 int status ;

__attribute__((used)) static int sgdma_rxbusy(struct altera_tse_private *priv)
{
 return csrrd32(priv->rx_dma_csr, sgdma_csroffs(status))
         & SGDMA_STSREG_BUSY;
}
