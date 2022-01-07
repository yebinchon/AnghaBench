
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath6kl_irq_proc_registers {int host_int_status; int rx_lkahd_valid; int * rx_lkahd; } ;
struct TYPE_4__ {int int_status_en; } ;
struct ath6kl_device {TYPE_2__* htc_cnxt; struct ath6kl_irq_proc_registers irq_proc_reg; TYPE_1__ irq_en_reg; int ar; } ;
struct TYPE_5__ {scalar_t__ chk_irq_status_cnt; } ;


 int ATH6KL_DBG_IRQ ;
 int HIF_RD_SYNC_BYTE_INC ;
 int HOST_INT_STATUS_ADDRESS ;
 int HOST_INT_STATUS_COUNTER ;
 int HOST_INT_STATUS_CPU ;
 int HOST_INT_STATUS_ERROR ;
 int HTC_MAILBOX ;
 scalar_t__ MS (int ,int) ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_dump_registers (struct ath6kl_device*,struct ath6kl_irq_proc_registers*,TYPE_1__*) ;
 int ath6kl_err (char*) ;
 int ath6kl_hif_proc_counter_intr (struct ath6kl_device*) ;
 int ath6kl_hif_proc_cpu_intr (struct ath6kl_device*) ;
 int ath6kl_hif_proc_err_intr (struct ath6kl_device*) ;
 int ath6kl_htc_rxmsg_pending_handler (TYPE_2__*,int ,int*) ;
 int hif_read_write_sync (int ,int ,int*,int,int ) ;
 int le32_to_cpu (int ) ;
 int trace_ath6kl_sdio_irq (TYPE_1__*,int) ;

__attribute__((used)) static int proc_pending_irqs(struct ath6kl_device *dev, bool *done)
{
 struct ath6kl_irq_proc_registers *rg;
 int status = 0;
 u8 host_int_status = 0;
 u32 lk_ahd = 0;
 u8 htc_mbox = 1 << HTC_MAILBOX;

 ath6kl_dbg(ATH6KL_DBG_IRQ, "proc_pending_irqs: (dev: 0x%p)\n", dev);
 if (dev->irq_en_reg.int_status_en) {
  status = hif_read_write_sync(dev->ar, HOST_INT_STATUS_ADDRESS,
          (u8 *) &dev->irq_proc_reg,
          sizeof(dev->irq_proc_reg),
          HIF_RD_SYNC_BYTE_INC);
  if (status)
   goto out;

  ath6kl_dump_registers(dev, &dev->irq_proc_reg,
          &dev->irq_en_reg);
  trace_ath6kl_sdio_irq(&dev->irq_en_reg,
          sizeof(dev->irq_en_reg));


  host_int_status = dev->irq_proc_reg.host_int_status &
      dev->irq_en_reg.int_status_en;


  if (host_int_status & htc_mbox) {




   host_int_status &= ~htc_mbox;
   if (dev->irq_proc_reg.rx_lkahd_valid &
       htc_mbox) {
    rg = &dev->irq_proc_reg;
    lk_ahd = le32_to_cpu(rg->rx_lkahd[HTC_MAILBOX]);
    if (!lk_ahd)
     ath6kl_err("lookAhead is zero!\n");
   }
  }
 }

 if (!host_int_status && !lk_ahd) {
  *done = 1;
  goto out;
 }

 if (lk_ahd) {
  int fetched = 0;

  ath6kl_dbg(ATH6KL_DBG_IRQ,
      "pending mailbox msg, lk_ahd: 0x%X\n", lk_ahd);
  status = ath6kl_htc_rxmsg_pending_handler(dev->htc_cnxt,
         lk_ahd, &fetched);
  if (status)
   goto out;

  if (!fetched)




   dev->htc_cnxt->chk_irq_status_cnt = 0;
 }


 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "valid interrupt source(s) for other interrupts: 0x%x\n",
     host_int_status);

 if (MS(HOST_INT_STATUS_CPU, host_int_status)) {

  status = ath6kl_hif_proc_cpu_intr(dev);
  if (status)
   goto out;
 }

 if (MS(HOST_INT_STATUS_ERROR, host_int_status)) {

  status = ath6kl_hif_proc_err_intr(dev);
  if (status)
   goto out;
 }

 if (MS(HOST_INT_STATUS_COUNTER, host_int_status))

  status = ath6kl_hif_proc_counter_intr(dev);

out:
 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "bypassing irq status re-check, forcing done\n");

 if (!dev->htc_cnxt->chk_irq_status_cnt)
  *done = 1;

 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "proc_pending_irqs: (done:%d, status=%d\n", *done, status);

 return status;
}
