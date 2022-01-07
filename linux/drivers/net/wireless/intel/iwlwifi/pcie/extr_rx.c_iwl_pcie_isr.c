
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;
typedef int irqreturn_t ;


 int CSR_INT_MASK ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int iwl_write32 (struct iwl_trans*,int ,int) ;

irqreturn_t iwl_pcie_isr(int irq, void *data)
{
 struct iwl_trans *trans = data;

 if (!trans)
  return IRQ_NONE;






 iwl_write32(trans, CSR_INT_MASK, 0x00000000);

 return IRQ_WAKE_THREAD;
}
