
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemini_ethernet_port {struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int irq_lock; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ;
 int IRQ_HANDLED ;
 unsigned long SWFQ_EMPTY_INT_BIT ;
 int geth_fill_freeq (struct gemini_ethernet*,int) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t gemini_port_irq_thread(int irq, void *data)
{
 unsigned long irqmask = SWFQ_EMPTY_INT_BIT;
 struct gemini_ethernet_port *port = data;
 struct gemini_ethernet *geth;
 unsigned long flags;

 geth = port->geth;

 geth_fill_freeq(geth, 1);

 spin_lock_irqsave(&geth->irq_lock, flags);

 writel(irqmask, geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);

 irqmask |= readl(geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 writel(irqmask, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
 spin_unlock_irqrestore(&geth->irq_lock, flags);

 return IRQ_HANDLED;
}
