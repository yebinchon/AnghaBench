
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct b53_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct b53_platform_data {int regs; } ;
struct b53_mmap_priv {int regs; } ;
struct b53_device {struct b53_platform_data* pdata; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int b53_mmap_ops ;
 struct b53_device* b53_switch_alloc (TYPE_1__*,int *,struct b53_mmap_priv*) ;
 int b53_switch_register (struct b53_device*) ;
 struct b53_mmap_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct b53_device*) ;

__attribute__((used)) static int b53_mmap_probe(struct platform_device *pdev)
{
 struct b53_platform_data *pdata = pdev->dev.platform_data;
 struct b53_mmap_priv *priv;
 struct b53_device *dev;

 if (!pdata)
  return -EINVAL;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regs = pdata->regs;

 dev = b53_switch_alloc(&pdev->dev, &b53_mmap_ops, priv);
 if (!dev)
  return -ENOMEM;

 dev->pdata = pdata;

 platform_set_drvdata(pdev, dev);

 return b53_switch_register(dev);
}
