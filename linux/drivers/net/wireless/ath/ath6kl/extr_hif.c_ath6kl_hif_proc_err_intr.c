
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int error_int_status; } ;
struct ath6kl_device {int ar; TYPE_1__ irq_proc_reg; } ;


 int ATH6KL_DBG_IRQ ;
 int EIO ;
 int ERROR_INT_STATUS_ADDRESS ;
 int ERROR_INT_STATUS_RX_UNDERFLOW ;
 int ERROR_INT_STATUS_TX_OVERFLOW ;
 int ERROR_INT_STATUS_WAKEUP ;
 int HIF_WR_SYNC_BYTE_FIX ;
 scalar_t__ MS (int ,int) ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_err (char*) ;
 int hif_read_write_sync (int ,int ,int*,int,int ) ;

__attribute__((used)) static int ath6kl_hif_proc_err_intr(struct ath6kl_device *dev)
{
 int status;
 u8 error_int_status;
 u8 reg_buf[4];

 ath6kl_dbg(ATH6KL_DBG_IRQ, "error interrupt\n");

 error_int_status = dev->irq_proc_reg.error_int_status & 0x0F;
 if (!error_int_status) {
  WARN_ON(1);
  return -EIO;
 }

 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "valid interrupt source(s) in ERROR_INT_STATUS: 0x%x\n",
     error_int_status);

 if (MS(ERROR_INT_STATUS_WAKEUP, error_int_status))
  ath6kl_dbg(ATH6KL_DBG_IRQ, "error : wakeup\n");

 if (MS(ERROR_INT_STATUS_RX_UNDERFLOW, error_int_status))
  ath6kl_err("rx underflow\n");

 if (MS(ERROR_INT_STATUS_TX_OVERFLOW, error_int_status))
  ath6kl_err("tx overflow\n");


 dev->irq_proc_reg.error_int_status &= ~error_int_status;


 reg_buf[0] = error_int_status;
 reg_buf[1] = 0;
 reg_buf[2] = 0;
 reg_buf[3] = 0;

 status = hif_read_write_sync(dev->ar, ERROR_INT_STATUS_ADDRESS,
         reg_buf, 4, HIF_WR_SYNC_BYTE_FIX);

 WARN_ON(status);

 return status;
}
