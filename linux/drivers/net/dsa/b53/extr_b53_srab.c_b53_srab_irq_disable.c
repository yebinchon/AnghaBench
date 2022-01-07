
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_srab_priv {struct b53_srab_port_priv* port_intrs; } ;
struct b53_srab_port_priv {int irq_enabled; int irq; } ;
struct b53_device {struct b53_srab_priv* priv; } ;


 int free_irq (int ,struct b53_srab_port_priv*) ;

__attribute__((used)) static void b53_srab_irq_disable(struct b53_device *dev, int port)
{
 struct b53_srab_priv *priv = dev->priv;
 struct b53_srab_port_priv *p = &priv->port_intrs[port];

 if (p->irq_enabled) {
  free_irq(p->irq, p);
  p->irq_enabled = 0;
 }
}
