
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;

irqreturn_t iwl_pcie_msix_isr(int irq, void *data)
{
 return IRQ_WAKE_THREAD;
}
