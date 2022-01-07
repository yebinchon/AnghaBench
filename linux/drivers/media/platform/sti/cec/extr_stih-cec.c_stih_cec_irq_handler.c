
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih_cec {scalar_t__ regs; int irq_status; } ;
typedef int irqreturn_t ;


 scalar_t__ CEC_STATUS ;
 int IRQ_WAKE_THREAD ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t stih_cec_irq_handler(int irq, void *priv)
{
 struct stih_cec *cec = priv;

 cec->irq_status = readl(cec->regs + CEC_STATUS);
 writel(cec->irq_status, cec->regs + CEC_STATUS);

 return IRQ_WAKE_THREAD;
}
