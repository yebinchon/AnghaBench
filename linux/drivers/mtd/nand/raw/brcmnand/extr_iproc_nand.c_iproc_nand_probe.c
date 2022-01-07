
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct brcmnand_soc {int prepare_data_bus; int ctlrdy_set_enabled; int ctlrdy_ack; } ;
struct iproc_nand_soc {void* ext_base; void* idm_base; int idm_lock; struct brcmnand_soc soc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int brcmnand_probe (struct platform_device*,struct brcmnand_soc*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 struct iproc_nand_soc* devm_kzalloc (struct device*,int,int ) ;
 int iproc_nand_apb_access ;
 int iproc_nand_intc_ack ;
 int iproc_nand_intc_set ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iproc_nand_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct iproc_nand_soc *priv;
 struct brcmnand_soc *soc;
 struct resource *res;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;
 soc = &priv->soc;

 spin_lock_init(&priv->idm_lock);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "iproc-idm");
 priv->idm_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->idm_base))
  return PTR_ERR(priv->idm_base);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "iproc-ext");
 priv->ext_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(priv->ext_base))
  return PTR_ERR(priv->ext_base);

 soc->ctlrdy_ack = iproc_nand_intc_ack;
 soc->ctlrdy_set_enabled = iproc_nand_intc_set;
 soc->prepare_data_bus = iproc_nand_apb_access;

 return brcmnand_probe(pdev, soc);
}
