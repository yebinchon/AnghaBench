
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int dev; int tx_dma_csr; } ;


 int SGDMA_STSREG_BUSY ;
 int csrrd32 (int ,int ) ;
 int netdev_err (int ,char*) ;
 int sgdma_csroffs (int ) ;
 int status ;
 int udelay (int) ;

__attribute__((used)) static int sgdma_txbusy(struct altera_tse_private *priv)
{
 int delay = 0;


 while ((csrrd32(priv->tx_dma_csr, sgdma_csroffs(status))
  & SGDMA_STSREG_BUSY) && (delay++ < 100))
  udelay(1);

 if (csrrd32(priv->tx_dma_csr, sgdma_csroffs(status))
     & SGDMA_STSREG_BUSY) {
  netdev_err(priv->dev, "timeout waiting for tx dma\n");
  return 1;
 }
 return 0;
}
