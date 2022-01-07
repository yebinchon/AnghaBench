
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {int isr_int_vec; int tgt_status_reg; int crb_int_state_reg; TYPE_1__* ahw; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int int_vec_bit; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR_LEGACY_INT_TRIGGERED (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static irqreturn_t qlcnic_82xx_clear_legacy_intr(struct qlcnic_adapter *adapter)
{
 u32 status;

 status = readl(adapter->isr_int_vec);

 if (!(status & adapter->ahw->int_vec_bit))
  return IRQ_NONE;


 status = readl(adapter->crb_int_state_reg);
 if (!ISR_LEGACY_INT_TRIGGERED(status))
  return IRQ_NONE;

 writel(0xffffffff, adapter->tgt_status_reg);

 readl(adapter->isr_int_vec);
 readl(adapter->isr_int_vec);

 return IRQ_HANDLED;
}
