
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {struct device_node* of_node; struct b53_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct b53_srab_priv {int regs; } ;
struct b53_platform_data {scalar_t__ chip_id; } ;
struct b53_device {struct b53_platform_data* pdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int b53_srab_mux_init (struct platform_device*) ;
 int b53_srab_of_match ;
 int b53_srab_ops ;
 int b53_srab_prepare_irq (struct platform_device*) ;
 struct b53_device* b53_switch_alloc (TYPE_1__*,int *,struct b53_srab_priv*) ;
 int b53_switch_register (struct b53_device*) ;
 void* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct b53_device*) ;

__attribute__((used)) static int b53_srab_probe(struct platform_device *pdev)
{
 struct b53_platform_data *pdata = pdev->dev.platform_data;
 struct device_node *dn = pdev->dev.of_node;
 const struct of_device_id *of_id = ((void*)0);
 struct b53_srab_priv *priv;
 struct b53_device *dev;

 if (dn)
  of_id = of_match_node(b53_srab_of_match, dn);

 if (of_id) {
  pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
  if (!pdata)
   return -ENOMEM;

  pdata->chip_id = (u32)(unsigned long)of_id->data;
 }

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->regs))
  return -ENOMEM;

 dev = b53_switch_alloc(&pdev->dev, &b53_srab_ops, priv);
 if (!dev)
  return -ENOMEM;

 if (pdata)
  dev->pdata = pdata;

 platform_set_drvdata(pdev, dev);

 b53_srab_prepare_irq(pdev);
 b53_srab_mux_init(pdev);

 return b53_switch_register(dev);
}
