
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int cpu_int_status; } ;
struct TYPE_3__ {int cpu_int_status_en; } ;
struct ath6kl_device {int ar; TYPE_2__ irq_proc_reg; TYPE_1__ irq_en_reg; } ;


 int ATH6KL_DBG_IRQ ;
 int CPU_INT_STATUS_ADDRESS ;
 int EIO ;
 int HIF_WR_SYNC_BYTE_FIX ;
 int WARN_ON (int) ;
 int ath6kl_dbg (int ,char*,...) ;
 int hif_read_write_sync (int ,int ,int*,int,int ) ;

__attribute__((used)) static int ath6kl_hif_proc_cpu_intr(struct ath6kl_device *dev)
{
 int status;
 u8 cpu_int_status;
 u8 reg_buf[4];

 ath6kl_dbg(ATH6KL_DBG_IRQ, "cpu interrupt\n");

 cpu_int_status = dev->irq_proc_reg.cpu_int_status &
    dev->irq_en_reg.cpu_int_status_en;
 if (!cpu_int_status) {
  WARN_ON(1);
  return -EIO;
 }

 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "valid interrupt source(s) in CPU_INT_STATUS: 0x%x\n",
  cpu_int_status);


 dev->irq_proc_reg.cpu_int_status &= ~cpu_int_status;
 reg_buf[0] = cpu_int_status;

 reg_buf[1] = 0;
 reg_buf[2] = 0;
 reg_buf[3] = 0;

 status = hif_read_write_sync(dev->ar, CPU_INT_STATUS_ADDRESS,
         reg_buf, 4, HIF_WR_SYNC_BYTE_FIX);

 WARN_ON(status);

 return status;
}
