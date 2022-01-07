
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* disable_ecc_sec ) (struct xgbe_prv_data*,int ) ;int (* disable_ecc_ded ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {TYPE_2__* vdata; TYPE_1__ hw_if; int desc_sec_count; int desc_sec_period; int rx_sec_count; int rx_sec_period; int tx_sec_count; int tx_sec_period; int stopdev_work; int desc_ded_count; int desc_ded_period; int rx_ded_count; int rx_ded_period; int tx_ded_count; int tx_ded_period; int netdev; } ;
struct TYPE_4__ {scalar_t__ irq_reissue_support; } ;


 int DESC_DED ;
 int DESC_SEC ;
 int RX_DED ;
 int RX_SEC ;
 int TX_DED ;
 int TX_SEC ;
 int XGBE_ECC_SEC_DESC ;
 int XGBE_ECC_SEC_RX ;
 int XGBE_ECC_SEC_TX ;
 int XP_ECC_IER ;
 int XP_ECC_ISR ;
 scalar_t__ XP_GET_BITS (unsigned int,int ,int ) ;
 int XP_INT_REISSUE_EN ;
 unsigned int XP_IOREAD (struct xgbe_prv_data*,int ) ;
 int XP_IOWRITE (struct xgbe_prv_data*,int ,int) ;
 int intr ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,unsigned int) ;
 int schedule_work (int *) ;
 int stub1 (struct xgbe_prv_data*) ;
 int stub2 (struct xgbe_prv_data*,int ) ;
 int stub3 (struct xgbe_prv_data*,int ) ;
 int stub4 (struct xgbe_prv_data*,int ) ;
 int xgbe_ecc_ded (struct xgbe_prv_data*,int *,int *,char*) ;
 scalar_t__ xgbe_ecc_sec (struct xgbe_prv_data*,int *,int *,char*) ;

__attribute__((used)) static void xgbe_ecc_isr_task(unsigned long data)
{
 struct xgbe_prv_data *pdata = (struct xgbe_prv_data *)data;
 unsigned int ecc_isr;
 bool stop = 0;


 ecc_isr = XP_IOREAD(pdata, XP_ECC_ISR);
 ecc_isr &= XP_IOREAD(pdata, XP_ECC_IER);
 netif_dbg(pdata, intr, pdata->netdev, "ECC_ISR=%#010x\n", ecc_isr);

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, TX_DED)) {
  stop |= xgbe_ecc_ded(pdata, &pdata->tx_ded_period,
         &pdata->tx_ded_count, "TX fifo");
 }

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, RX_DED)) {
  stop |= xgbe_ecc_ded(pdata, &pdata->rx_ded_period,
         &pdata->rx_ded_count, "RX fifo");
 }

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, DESC_DED)) {
  stop |= xgbe_ecc_ded(pdata, &pdata->desc_ded_period,
         &pdata->desc_ded_count,
         "descriptor cache");
 }

 if (stop) {
  pdata->hw_if.disable_ecc_ded(pdata);
  schedule_work(&pdata->stopdev_work);
  goto out;
 }

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, TX_SEC)) {
  if (xgbe_ecc_sec(pdata, &pdata->tx_sec_period,
     &pdata->tx_sec_count, "TX fifo"))
   pdata->hw_if.disable_ecc_sec(pdata, XGBE_ECC_SEC_TX);
 }

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, RX_SEC))
  if (xgbe_ecc_sec(pdata, &pdata->rx_sec_period,
     &pdata->rx_sec_count, "RX fifo"))
   pdata->hw_if.disable_ecc_sec(pdata, XGBE_ECC_SEC_RX);

 if (XP_GET_BITS(ecc_isr, XP_ECC_ISR, DESC_SEC))
  if (xgbe_ecc_sec(pdata, &pdata->desc_sec_period,
     &pdata->desc_sec_count, "descriptor cache"))
   pdata->hw_if.disable_ecc_sec(pdata, XGBE_ECC_SEC_DESC);

out:

 XP_IOWRITE(pdata, XP_ECC_ISR, ecc_isr);


 if (pdata->vdata->irq_reissue_support)
  XP_IOWRITE(pdata, XP_INT_REISSUE_EN, 1 << 1);
}
