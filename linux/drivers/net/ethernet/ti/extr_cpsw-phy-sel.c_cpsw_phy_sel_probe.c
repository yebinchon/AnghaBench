
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
struct cpsw_phy_sel_priv {int rmii_clock_external; int gmii_sel; int cpsw_phy_sel; TYPE_1__* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpsw_phy_sel_id_table ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct cpsw_phy_sel_priv*) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct cpsw_phy_sel_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ of_find_property (int ,char*,int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

__attribute__((used)) static int cpsw_phy_sel_probe(struct platform_device *pdev)
{
 struct resource *res;
 const struct of_device_id *of_id;
 struct cpsw_phy_sel_priv *priv;

 of_id = of_match_node(cpsw_phy_sel_id_table, pdev->dev.of_node);
 if (!of_id)
  return -EINVAL;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv) {
  dev_err(&pdev->dev, "unable to alloc memory for cpsw phy sel\n");
  return -ENOMEM;
 }

 priv->dev = &pdev->dev;
 priv->cpsw_phy_sel = of_id->data;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "gmii-sel");
 priv->gmii_sel = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->gmii_sel))
  return PTR_ERR(priv->gmii_sel);

 if (of_find_property(pdev->dev.of_node, "rmii-clock-ext", ((void*)0)))
  priv->rmii_clock_external = 1;

 dev_set_drvdata(&pdev->dev, priv);

 return 0;
}
