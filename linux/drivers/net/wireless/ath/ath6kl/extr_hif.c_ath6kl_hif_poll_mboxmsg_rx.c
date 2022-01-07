
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath6kl_irq_proc_registers {int host_int_status; int rx_lkahd_valid; int counter_int_status; int * rx_lkahd; } ;
struct ath6kl_device {struct ath6kl_irq_proc_registers irq_proc_reg; int ar; } ;


 int ATH6KL_DBG_HIF ;
 int ATH6KL_TARGET_DEBUG_INTR_MASK ;
 int ATH6KL_TIME_QUANTUM ;
 int ETIME ;
 int HIF_RD_SYNC_BYTE_INC ;
 int HOST_INT_STATUS_ADDRESS ;
 int HTC_MAILBOX ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_err (char*) ;
 int ath6kl_hif_proc_dbg_intr (struct ath6kl_device*) ;
 int hif_read_write_sync (int ,int ,int*,int,int ) ;
 int le32_to_cpu (int ) ;
 int mdelay (int) ;

int ath6kl_hif_poll_mboxmsg_rx(struct ath6kl_device *dev, u32 *lk_ahd,
         int timeout)
{
 struct ath6kl_irq_proc_registers *rg;
 int status = 0, i;
 u8 htc_mbox = 1 << HTC_MAILBOX;

 for (i = timeout / ATH6KL_TIME_QUANTUM; i > 0; i--) {

  status = hif_read_write_sync(dev->ar, HOST_INT_STATUS_ADDRESS,
          (u8 *) &dev->irq_proc_reg,
          sizeof(dev->irq_proc_reg),
          HIF_RD_SYNC_BYTE_INC);

  if (status) {
   ath6kl_err("failed to read reg table\n");
   return status;
  }


  if (dev->irq_proc_reg.host_int_status & htc_mbox) {
   if (dev->irq_proc_reg.rx_lkahd_valid &
       htc_mbox) {




    rg = &dev->irq_proc_reg;
    *lk_ahd =
     le32_to_cpu(rg->rx_lkahd[HTC_MAILBOX]);
    break;
   }
  }


  mdelay(ATH6KL_TIME_QUANTUM);
  ath6kl_dbg(ATH6KL_DBG_HIF, "hif retry mbox poll try %d\n", i);
 }

 if (i == 0) {
  ath6kl_err("timeout waiting for recv message\n");
  status = -ETIME;

  if (dev->irq_proc_reg.counter_int_status &
      ATH6KL_TARGET_DEBUG_INTR_MASK)




   ath6kl_hif_proc_dbg_intr(dev);
 }

 return status;
}
