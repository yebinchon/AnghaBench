
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {scalar_t__ regs; void* sfl_reg; void* sts_reg; } ;
typedef int irqreturn_t ;


 scalar_t__ HVA_HIF_FIFO_STS ;
 scalar_t__ HVA_HIF_REG_IT_ACK ;
 scalar_t__ HVA_HIF_REG_SFL ;
 int IRQ_WAKE_THREAD ;
 void* readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t hva_hw_its_interrupt(int irq, void *data)
{
 struct hva_dev *hva = data;


 hva->sts_reg = readl_relaxed(hva->regs + HVA_HIF_FIFO_STS);
 hva->sfl_reg = readl_relaxed(hva->regs + HVA_HIF_REG_SFL);


 writel_relaxed(0x1, hva->regs + HVA_HIF_REG_IT_ACK);

 return IRQ_WAKE_THREAD;
}
