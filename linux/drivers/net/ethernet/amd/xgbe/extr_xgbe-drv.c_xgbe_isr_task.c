
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* i2c_isr ) (struct xgbe_prv_data*) ;} ;
struct TYPE_6__ {int (* an_isr ) (struct xgbe_prv_data*) ;} ;
struct TYPE_5__ {int rx_buffer_unavailable; } ;
struct xgbe_hw_if {int (* get_tx_tstamp ) (struct xgbe_prv_data*) ;int (* rx_mmc_int ) (struct xgbe_prv_data*) ;int (* tx_mmc_int ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {unsigned int channel_count; scalar_t__ dev_irq; scalar_t__ an_irq; scalar_t__ ecc_irq; scalar_t__ i2c_irq; int per_channel_irq; TYPE_4__* vdata; TYPE_3__ i2c_if; TYPE_2__ phy_if; int mdio_complete; int netdev; int tx_tstamp_work; int dev_workqueue; int tx_tstamp; int restart_work; TYPE_1__ ext_stats; int napi; struct xgbe_channel** channel; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int dummy; } ;
struct TYPE_8__ {scalar_t__ irq_reissue_support; scalar_t__ i2c_support; scalar_t__ ecc_support; } ;


 int DMA_CH_SR ;
 int DMA_ISR ;
 int FBE ;
 int MACIS ;
 int MAC_ISR ;
 int MAC_MDIOISR ;
 int MAC_TSSR ;
 int MMCRXIS ;
 int MMCTXIS ;
 int RBU ;
 int RI ;
 int SMI ;
 int SNGLCOMPINT ;
 int TI ;
 int TSIS ;
 int TXTSC ;
 unsigned int XGMAC_DMA_IOREAD (struct xgbe_channel*,int ) ;
 int XGMAC_DMA_IOWRITE (struct xgbe_channel*,int ,unsigned int) ;
 scalar_t__ XGMAC_GET_BITS (unsigned int,int ,int ) ;
 unsigned int XGMAC_IOREAD (struct xgbe_prv_data*,int ) ;
 int XGMAC_SET_BITS (unsigned int,int ,int ,int ) ;
 int XP_INT_REISSUE_EN ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,unsigned int) ;
 int __napi_schedule_irqoff (int *) ;
 int complete (int *) ;
 int intr ;
 scalar_t__ napi_schedule_prep (int *) ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,unsigned int,...) ;
 int queue_work (int ,int *) ;
 int schedule_work (int *) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*) ;
 int stub3 (struct xgbe_prv_data*) ;
 int stub4 (struct xgbe_prv_data*) ;
 int stub5 (struct xgbe_prv_data*) ;
 int xgbe_disable_rx_tx_ints (struct xgbe_prv_data*) ;
 int xgbe_ecc_isr_task (unsigned long) ;

__attribute__((used)) static void xgbe_isr_task(unsigned long data)
{
 struct xgbe_prv_data *pdata = (struct xgbe_prv_data *)data;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_channel *channel;
 unsigned int dma_isr, dma_ch_isr;
 unsigned int mac_isr, mac_tssr, mac_mdioisr;
 unsigned int i;





 dma_isr = XGMAC_IOREAD(pdata, DMA_ISR);
 if (!dma_isr)
  goto isr_done;

 netif_dbg(pdata, intr, pdata->netdev, "DMA_ISR=%#010x\n", dma_isr);

 for (i = 0; i < pdata->channel_count; i++) {
  if (!(dma_isr & (1 << i)))
   continue;

  channel = pdata->channel[i];

  dma_ch_isr = XGMAC_DMA_IOREAD(channel, DMA_CH_SR);
  netif_dbg(pdata, intr, pdata->netdev, "DMA_CH%u_ISR=%#010x\n",
     i, dma_ch_isr);





  if (!pdata->per_channel_irq &&
      (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, TI) ||
       XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, RI))) {
   if (napi_schedule_prep(&pdata->napi)) {

    xgbe_disable_rx_tx_ints(pdata);


    __napi_schedule_irqoff(&pdata->napi);
   }
  } else {




   XGMAC_SET_BITS(dma_ch_isr, DMA_CH_SR, TI, 0);
   XGMAC_SET_BITS(dma_ch_isr, DMA_CH_SR, RI, 0);
  }

  if (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, RBU))
   pdata->ext_stats.rx_buffer_unavailable++;


  if (XGMAC_GET_BITS(dma_ch_isr, DMA_CH_SR, FBE))
   schedule_work(&pdata->restart_work);


  XGMAC_DMA_IOWRITE(channel, DMA_CH_SR, dma_ch_isr);
 }

 if (XGMAC_GET_BITS(dma_isr, DMA_ISR, MACIS)) {
  mac_isr = XGMAC_IOREAD(pdata, MAC_ISR);

  netif_dbg(pdata, intr, pdata->netdev, "MAC_ISR=%#010x\n",
     mac_isr);

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, MMCTXIS))
   hw_if->tx_mmc_int(pdata);

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, MMCRXIS))
   hw_if->rx_mmc_int(pdata);

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, TSIS)) {
   mac_tssr = XGMAC_IOREAD(pdata, MAC_TSSR);

   netif_dbg(pdata, intr, pdata->netdev,
      "MAC_TSSR=%#010x\n", mac_tssr);

   if (XGMAC_GET_BITS(mac_tssr, MAC_TSSR, TXTSC)) {

    pdata->tx_tstamp =
     hw_if->get_tx_tstamp(pdata);
    queue_work(pdata->dev_workqueue,
        &pdata->tx_tstamp_work);
   }
  }

  if (XGMAC_GET_BITS(mac_isr, MAC_ISR, SMI)) {
   mac_mdioisr = XGMAC_IOREAD(pdata, MAC_MDIOISR);

   netif_dbg(pdata, intr, pdata->netdev,
      "MAC_MDIOISR=%#010x\n", mac_mdioisr);

   if (XGMAC_GET_BITS(mac_mdioisr, MAC_MDIOISR,
        SNGLCOMPINT))
    complete(&pdata->mdio_complete);
  }
 }

isr_done:

 if (pdata->dev_irq == pdata->an_irq)
  pdata->phy_if.an_isr(pdata);


 if (pdata->vdata->ecc_support && (pdata->dev_irq == pdata->ecc_irq))
  xgbe_ecc_isr_task((unsigned long)pdata);


 if (pdata->vdata->i2c_support && (pdata->dev_irq == pdata->i2c_irq))
  pdata->i2c_if.i2c_isr(pdata);


 if (pdata->vdata->irq_reissue_support) {
  unsigned int reissue_mask;

  reissue_mask = 1 << 0;
  if (!pdata->per_channel_irq)
   reissue_mask |= 0xffff << 4;

  XP_IOWRITE(pdata, XP_INT_REISSUE_EN, reissue_mask);
 }
}
