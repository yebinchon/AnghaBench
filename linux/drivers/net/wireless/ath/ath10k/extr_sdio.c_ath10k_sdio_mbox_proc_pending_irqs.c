
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SDIO ;
 scalar_t__ FIELD_GET (int ,int ) ;
 int MBOX_HOST_INT_STATUS_COUNTER_MASK ;
 int MBOX_HOST_INT_STATUS_CPU_MASK ;
 int MBOX_HOST_INT_STATUS_ERROR_MASK ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,...) ;
 int ath10k_sdio_mbox_proc_counter_intr (struct ath10k*) ;
 int ath10k_sdio_mbox_proc_cpu_intr (struct ath10k*) ;
 int ath10k_sdio_mbox_proc_err_intr (struct ath10k*) ;
 int ath10k_sdio_mbox_read_int_status (struct ath10k*,int *,scalar_t__*) ;
 int ath10k_sdio_mbox_rxmsg_pending_handler (struct ath10k*,scalar_t__,int*) ;

__attribute__((used)) static int ath10k_sdio_mbox_proc_pending_irqs(struct ath10k *ar,
           bool *done)
{
 u8 host_int_status;
 u32 lookahead;
 int ret;







 ret = ath10k_sdio_mbox_read_int_status(ar,
            &host_int_status,
            &lookahead);
 if (ret) {
  *done = 1;
  goto out;
 }

 if (!host_int_status && !lookahead) {
  ret = 0;
  *done = 1;
  goto out;
 }

 if (lookahead) {
  ath10k_dbg(ar, ATH10K_DBG_SDIO,
      "sdio pending mailbox msg lookahead 0x%08x\n",
      lookahead);

  ret = ath10k_sdio_mbox_rxmsg_pending_handler(ar,
            lookahead,
            done);
  if (ret)
   goto out;
 }


 ath10k_dbg(ar, ATH10K_DBG_SDIO,
     "sdio host_int_status 0x%x\n", host_int_status);

 if (FIELD_GET(MBOX_HOST_INT_STATUS_CPU_MASK, host_int_status)) {

  ret = ath10k_sdio_mbox_proc_cpu_intr(ar);
  if (ret)
   goto out;
 }

 if (FIELD_GET(MBOX_HOST_INT_STATUS_ERROR_MASK, host_int_status)) {

  ret = ath10k_sdio_mbox_proc_err_intr(ar);
  if (ret)
   goto out;
 }

 if (FIELD_GET(MBOX_HOST_INT_STATUS_COUNTER_MASK, host_int_status))

  ret = ath10k_sdio_mbox_proc_counter_intr(ar);

 ret = 0;

out:
 ath10k_dbg(ar, ATH10K_DBG_SDIO,
     "sdio pending irqs done %d status %d",
     *done, ret);

 return ret;
}
