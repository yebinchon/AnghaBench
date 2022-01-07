
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct ingenic_ecc {struct device* dev; int lock; int clk; TYPE_1__* ops; int base; } ;
struct TYPE_2__ {int (* disable ) (struct ingenic_ecc*) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 TYPE_1__* device_get_match_data (struct device*) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct ingenic_ecc* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ingenic_ecc*) ;
 int stub1 (struct ingenic_ecc*) ;

int ingenic_ecc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ingenic_ecc *ecc;
 struct resource *res;

 ecc = devm_kzalloc(dev, sizeof(*ecc), GFP_KERNEL);
 if (!ecc)
  return -ENOMEM;

 ecc->ops = device_get_match_data(dev);
 if (!ecc->ops)
  return -EINVAL;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ecc->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(ecc->base))
  return PTR_ERR(ecc->base);

 ecc->ops->disable(ecc);

 ecc->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ecc->clk)) {
  dev_err(dev, "failed to get clock: %ld\n", PTR_ERR(ecc->clk));
  return PTR_ERR(ecc->clk);
 }

 mutex_init(&ecc->lock);

 ecc->dev = dev;
 platform_set_drvdata(pdev, ecc);

 return 0;
}
