
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dcmi {int irqlock; int regs; int misr; } ;
typedef int irqreturn_t ;


 int DCMI_ICR ;
 int DCMI_MIS ;
 int IRQ_WAKE_THREAD ;
 int IT_ERR ;
 int IT_FRAME ;
 int IT_OVR ;
 int reg_read (int ,int ) ;
 int reg_set (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t dcmi_irq_callback(int irq, void *arg)
{
 struct stm32_dcmi *dcmi = arg;
 unsigned long flags;

 spin_lock_irqsave(&dcmi->irqlock, flags);

 dcmi->misr = reg_read(dcmi->regs, DCMI_MIS);


 reg_set(dcmi->regs, DCMI_ICR, IT_FRAME | IT_OVR | IT_ERR);

 spin_unlock_irqrestore(&dcmi->irqlock, flags);

 return IRQ_WAKE_THREAD;
}
