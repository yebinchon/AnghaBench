
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_target {int tx_bndl_mask; int rx_bndl_enable; int tgt_cred_sz; int block_sz; void* max_rx_bndl_sz; void* max_tx_bndl_sz; void* max_xfer_szper_scatreq; void* msg_per_bndl_max; int max_scat_entries; TYPE_1__* dev; } ;
struct TYPE_2__ {int ar; } ;


 int ATH6KL_DBG_BOOT ;
 int HIF_MBOX0_EXT_WIDTH ;
 int HTC_HOST_MAX_MSG_PER_BUNDLE ;
 int WMM_NUM_AC ;
 int ath6kl_dbg (int ,char*,void*,...) ;
 scalar_t__ ath6kl_hif_enable_scatter (int ) ;
 int ath6kl_warn (char*,int) ;
 void* min (int ,void*) ;

__attribute__((used)) static void htc_setup_msg_bndl(struct htc_target *target)
{

 target->msg_per_bndl_max = min(HTC_HOST_MAX_MSG_PER_BUNDLE,
           target->msg_per_bndl_max);

 if (ath6kl_hif_enable_scatter(target->dev->ar)) {
  target->msg_per_bndl_max = 0;
  return;
 }


 target->msg_per_bndl_max = min(target->max_scat_entries,
           target->msg_per_bndl_max);

 ath6kl_dbg(ATH6KL_DBG_BOOT,
     "htc bundling allowed msg_per_bndl_max %d\n",
     target->msg_per_bndl_max);


 target->max_rx_bndl_sz = target->max_xfer_szper_scatreq;

 target->max_tx_bndl_sz = min(HIF_MBOX0_EXT_WIDTH,
         target->max_xfer_szper_scatreq);

 ath6kl_dbg(ATH6KL_DBG_BOOT, "htc max_rx_bndl_sz %d max_tx_bndl_sz %d\n",
     target->max_rx_bndl_sz, target->max_tx_bndl_sz);

 if (target->max_tx_bndl_sz)

  target->tx_bndl_mask = (1 << WMM_NUM_AC) - 1;

 if (target->max_rx_bndl_sz)
  target->rx_bndl_enable = 1;

 if ((target->tgt_cred_sz % target->block_sz) != 0) {
  ath6kl_warn("credit size: %d is not block aligned! Disabling send bundling\n",
       target->tgt_cred_sz);







  target->tx_bndl_mask = 0;
 }
}
