
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct brcmnand_soc {int ctlrdy_set_enabled; int ctlrdy_ack; } ;
struct bcm6368_nand_soc {scalar_t__ base; struct brcmnand_soc soc; } ;


 scalar_t__ BCM6368_NAND_INT ;
 int BCM6368_NAND_STATUS_MASK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int bcm6368_nand_intc_ack ;
 int bcm6368_nand_intc_set ;
 int brcmnand_probe (struct platform_device*,struct brcmnand_soc*) ;
 int brcmnand_writel (int ,scalar_t__) ;
 scalar_t__ devm_ioremap_resource (struct device*,struct resource*) ;
 struct bcm6368_nand_soc* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int bcm6368_nand_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm6368_nand_soc *priv;
 struct brcmnand_soc *soc;
 struct resource *res;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 soc = &priv->soc;

 res = platform_get_resource_byname(pdev,
  IORESOURCE_MEM, "nand-int-base");
 priv->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 soc->ctlrdy_ack = bcm6368_nand_intc_ack;
 soc->ctlrdy_set_enabled = bcm6368_nand_intc_set;


 brcmnand_writel(0, priv->base + BCM6368_NAND_INT);
 brcmnand_writel(BCM6368_NAND_STATUS_MASK,
   priv->base + BCM6368_NAND_INT);

 return brcmnand_probe(pdev, soc);
}
