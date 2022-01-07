
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_srab_priv {scalar_t__ regs; } ;
struct b53_srab_port_priv {int num; struct b53_device* dev; } ;
struct b53_device {struct b53_srab_priv* priv; } ;
typedef int irqreturn_t ;


 scalar_t__ B53_SRAB_INTR ;
 int BIT (int ) ;
 int IRQ_WAKE_THREAD ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t b53_srab_port_isr(int irq, void *dev_id)
{
 struct b53_srab_port_priv *port = dev_id;
 struct b53_device *dev = port->dev;
 struct b53_srab_priv *priv = dev->priv;


 writel(BIT(port->num), priv->regs + B53_SRAB_INTR);

 return IRQ_WAKE_THREAD;
}
