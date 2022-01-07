
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct b53_srab_priv {struct b53_srab_port_priv* port_intrs; scalar_t__ regs; } ;
struct b53_srab_port_priv {unsigned int num; int irq; struct b53_device* dev; } ;
struct b53_device {struct b53_srab_priv* priv; } ;


 unsigned int B53_N_PORTS ;
 scalar_t__ B53_SRAB_INTR ;
 int GFP_KERNEL ;
 int b53_srab_intr_set (struct b53_srab_priv*,int) ;
 char* kasprintf (int ,char*,unsigned int) ;
 int kfree (char*) ;
 struct b53_device* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void b53_srab_prepare_irq(struct platform_device *pdev)
{
 struct b53_device *dev = platform_get_drvdata(pdev);
 struct b53_srab_priv *priv = dev->priv;
 struct b53_srab_port_priv *port;
 unsigned int i;
 char *name;


 writel(0xffffffff, priv->regs + B53_SRAB_INTR);

 for (i = 0; i < B53_N_PORTS; i++) {
  port = &priv->port_intrs[i];


  if (i == 6)
   continue;

  name = kasprintf(GFP_KERNEL, "link_state_p%d", i);
  if (!name)
   return;

  port->num = i;
  port->dev = dev;
  port->irq = platform_get_irq_byname(pdev, name);
  kfree(name);
 }

 b53_srab_intr_set(priv, 1);
}
