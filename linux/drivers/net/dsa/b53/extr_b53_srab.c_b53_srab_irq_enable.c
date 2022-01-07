
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_srab_priv {struct b53_srab_port_priv* port_intrs; } ;
struct b53_srab_port_priv {int irq_enabled; int irq; } ;
struct b53_device {int dev; struct b53_srab_priv* priv; } ;


 int ENXIO ;
 int b53_srab_port_isr ;
 int b53_srab_port_thread ;
 int dev_name (int ) ;
 int request_threaded_irq (int ,int ,int ,int ,int ,struct b53_srab_port_priv*) ;

__attribute__((used)) static int b53_srab_irq_enable(struct b53_device *dev, int port)
{
 struct b53_srab_priv *priv = dev->priv;
 struct b53_srab_port_priv *p = &priv->port_intrs[port];
 int ret = 0;




 if (p->irq == -ENXIO)
  return ret;

 ret = request_threaded_irq(p->irq, b53_srab_port_isr,
       b53_srab_port_thread, 0,
       dev_name(dev->dev), p);
 if (!ret)
  p->irq_enabled = 1;

 return ret;
}
