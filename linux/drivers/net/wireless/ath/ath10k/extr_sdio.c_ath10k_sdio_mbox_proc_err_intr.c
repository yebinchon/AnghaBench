
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ath10k_sdio_irq_data {TYPE_1__* irq_proc_reg; } ;
struct ath10k_sdio {struct ath10k_sdio_irq_data irq_data; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int error_int_status; } ;


 int ATH10K_DBG_SDIO ;
 int EIO ;
 scalar_t__ FIELD_GET (int ,int) ;
 int MBOX_ERROR_INT_STATUS_ADDRESS ;
 int MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK ;
 int MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK ;
 int MBOX_ERROR_INT_STATUS_WAKEUP_MASK ;
 int ath10k_dbg (struct ath10k*,int ,char*,...) ;
 struct ath10k_sdio* ath10k_sdio_priv (struct ath10k*) ;
 int ath10k_sdio_writesb32 (struct ath10k*,int ,int) ;
 int ath10k_warn (struct ath10k*,char*,...) ;

__attribute__((used)) static int ath10k_sdio_mbox_proc_err_intr(struct ath10k *ar)
{
 struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
 struct ath10k_sdio_irq_data *irq_data = &ar_sdio->irq_data;
 u8 error_int_status;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio error interrupt\n");

 error_int_status = irq_data->irq_proc_reg->error_int_status & 0x0F;
 if (!error_int_status) {
  ath10k_warn(ar, "invalid error interrupt status: 0x%x\n",
       error_int_status);
  return -EIO;
 }

 ath10k_dbg(ar, ATH10K_DBG_SDIO,
     "sdio error_int_status 0x%x\n", error_int_status);

 if (FIELD_GET(MBOX_ERROR_INT_STATUS_WAKEUP_MASK,
        error_int_status))
  ath10k_dbg(ar, ATH10K_DBG_SDIO, "sdio interrupt error wakeup\n");

 if (FIELD_GET(MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK,
        error_int_status))
  ath10k_warn(ar, "rx underflow interrupt error\n");

 if (FIELD_GET(MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK,
        error_int_status))
  ath10k_warn(ar, "tx overflow interrupt error\n");


 irq_data->irq_proc_reg->error_int_status &= ~error_int_status;


 ret = ath10k_sdio_writesb32(ar, MBOX_ERROR_INT_STATUS_ADDRESS,
        error_int_status);
 if (ret) {
  ath10k_warn(ar, "unable to write to error int status address: %d\n",
       ret);
  return ret;
 }

 return 0;
}
