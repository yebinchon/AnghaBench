
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int cntr_int_status_en; } ;
struct TYPE_3__ {int counter_int_status; } ;
struct ath6kl_device {TYPE_2__ irq_en_reg; TYPE_1__ irq_proc_reg; } ;


 int ATH6KL_DBG_IRQ ;
 int ATH6KL_TARGET_DEBUG_INTR_MASK ;
 int ath6kl_dbg (int ,char*,...) ;
 int ath6kl_hif_proc_dbg_intr (struct ath6kl_device*) ;

__attribute__((used)) static int ath6kl_hif_proc_counter_intr(struct ath6kl_device *dev)
{
 u8 counter_int_status;

 ath6kl_dbg(ATH6KL_DBG_IRQ, "counter interrupt\n");

 counter_int_status = dev->irq_proc_reg.counter_int_status &
        dev->irq_en_reg.cntr_int_status_en;

 ath6kl_dbg(ATH6KL_DBG_IRQ,
     "valid interrupt source(s) in COUNTER_INT_STATUS: 0x%x\n",
  counter_int_status);






 if (counter_int_status & ATH6KL_TARGET_DEBUG_INTR_MASK)
  return ath6kl_hif_proc_dbg_intr(dev);

 return 0;
}
