
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_tse_private {int tx_dma_csr; int dev; int rx_dma_csr; } ;


 int ALTERA_TSE_SW_RESET_WATCHDOG_CNTR ;
 int MSGDMA_CSR_CTL_RESET ;
 int MSGDMA_CSR_STAT_MASK ;
 int MSGDMA_CSR_STAT_RESETTING ;
 int control ;
 int csrwr32 (int ,int ,int ) ;
 int drv ;
 int msgdma_csroffs (int ) ;
 int netif_warn (struct altera_tse_private*,int ,int ,char*) ;
 int status ;
 scalar_t__ tse_bit_is_clear (int ,int ,int ) ;
 int udelay (int) ;

void msgdma_reset(struct altera_tse_private *priv)
{
 int counter;


 csrwr32(MSGDMA_CSR_STAT_MASK, priv->rx_dma_csr,
  msgdma_csroffs(status));
 csrwr32(MSGDMA_CSR_CTL_RESET, priv->rx_dma_csr,
  msgdma_csroffs(control));

 counter = 0;
 while (counter++ < ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
  if (tse_bit_is_clear(priv->rx_dma_csr, msgdma_csroffs(status),
         MSGDMA_CSR_STAT_RESETTING))
   break;
  udelay(1);
 }

 if (counter >= ALTERA_TSE_SW_RESET_WATCHDOG_CNTR)
  netif_warn(priv, drv, priv->dev,
      "TSE Rx mSGDMA resetting bit never cleared!\n");


 csrwr32(MSGDMA_CSR_STAT_MASK, priv->rx_dma_csr, msgdma_csroffs(status));


 csrwr32(MSGDMA_CSR_STAT_MASK, priv->tx_dma_csr,
  msgdma_csroffs(status));

 csrwr32(MSGDMA_CSR_CTL_RESET, priv->tx_dma_csr,
  msgdma_csroffs(control));

 counter = 0;
 while (counter++ < ALTERA_TSE_SW_RESET_WATCHDOG_CNTR) {
  if (tse_bit_is_clear(priv->tx_dma_csr, msgdma_csroffs(status),
         MSGDMA_CSR_STAT_RESETTING))
   break;
  udelay(1);
 }

 if (counter >= ALTERA_TSE_SW_RESET_WATCHDOG_CNTR)
  netif_warn(priv, drv, priv->dev,
      "TSE Tx mSGDMA resetting bit never cleared!\n");


 csrwr32(MSGDMA_CSR_STAT_MASK, priv->tx_dma_csr, msgdma_csroffs(status));
}
