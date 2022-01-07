
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct brcmnand_soc {int ctlrdy_set_enabled; int ctlrdy_ack; } ;
struct bcm63138_nand_soc {int base; struct brcmnand_soc soc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bcm63138_nand_intc_ack ;
 int bcm63138_nand_intc_set ;
 int brcmnand_probe (struct platform_device*,struct brcmnand_soc*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm63138_nand_soc* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int bcm63138_nand_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm63138_nand_soc *priv;
 struct brcmnand_soc *soc;
 struct resource *res;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 soc = &priv->soc;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "nand-int-base");
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 soc->ctlrdy_ack = bcm63138_nand_intc_ack;
 soc->ctlrdy_set_enabled = bcm63138_nand_intc_set;

 return brcmnand_probe(pdev, soc);
}
