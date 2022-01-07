
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct elm_info {int elm_completion; } ;
typedef int irqreturn_t ;


 int ELM_IRQSTATUS ;
 int INTR_STATUS_PAGE_VALID ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int elm_read_reg (struct elm_info*,int ) ;
 int elm_write_reg (struct elm_info*,int ,int) ;

__attribute__((used)) static irqreturn_t elm_isr(int this_irq, void *dev_id)
{
 u32 reg_val;
 struct elm_info *info = dev_id;

 reg_val = elm_read_reg(info, ELM_IRQSTATUS);


 if (reg_val & INTR_STATUS_PAGE_VALID) {
  elm_write_reg(info, ELM_IRQSTATUS,
    reg_val & INTR_STATUS_PAGE_VALID);
  complete(&info->elm_completion);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
