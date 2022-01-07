
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gemini_ethernet_port {struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int irq_lock; scalar_t__ base; } ;
typedef int irqreturn_t ;


 scalar_t__ GLOBAL_INTERRUPT_ENABLE_4_REG ;
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ;
 int GMAC0_RX_OVERRUN_INT_BIT ;
 int GMAC1_RX_OVERRUN_INT_BIT ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int SWFQ_EMPTY_INT_BIT ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t gemini_port_irq(int irq, void *data)
{
 struct gemini_ethernet_port *port = data;
 struct gemini_ethernet *geth;
 irqreturn_t ret = IRQ_NONE;
 u32 val, en;

 geth = port->geth;
 spin_lock(&geth->irq_lock);

 val = readl(geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);
 en = readl(geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);

 if (val & en & SWFQ_EMPTY_INT_BIT) {




  en &= ~(SWFQ_EMPTY_INT_BIT | GMAC0_RX_OVERRUN_INT_BIT
        | GMAC1_RX_OVERRUN_INT_BIT);
  writel(en, geth->base + GLOBAL_INTERRUPT_ENABLE_4_REG);
  ret = IRQ_WAKE_THREAD;
 }

 spin_unlock(&geth->irq_lock);

 return ret;
}
