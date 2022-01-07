
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct net_device* u32 ;
struct ns83820 {scalar_t__ base; scalar_t__ ihr; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ ISR ;
 struct ns83820* PRIV (struct net_device*) ;
 int dprintk (char*,struct net_device*) ;
 int ns83820_do_isr (struct net_device*,struct net_device*) ;
 struct net_device* readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t ns83820_irq(int foo, void *data)
{
 struct net_device *ndev = data;
 struct ns83820 *dev = PRIV(ndev);
 u32 isr;
 dprintk("ns83820_irq(%p)\n", ndev);

 dev->ihr = 0;

 isr = readl(dev->base + ISR);
 dprintk("irq: %08x\n", isr);
 ns83820_do_isr(ndev, isr);
 return IRQ_HANDLED;
}
