
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_rsb_device {int dev; int irq; } ;
struct axp20x_dev {int regmap; int regmap_cfg; int irq; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int axp20x_device_probe (struct axp20x_dev*) ;
 int axp20x_match_device (struct axp20x_dev*) ;
 int dev_err (int *,char*,int) ;
 int dev_set_drvdata (int *,struct axp20x_dev*) ;
 struct axp20x_dev* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_sunxi_rsb (struct sunxi_rsb_device*,int ) ;

__attribute__((used)) static int axp20x_rsb_probe(struct sunxi_rsb_device *rdev)
{
 struct axp20x_dev *axp20x;
 int ret;

 axp20x = devm_kzalloc(&rdev->dev, sizeof(*axp20x), GFP_KERNEL);
 if (!axp20x)
  return -ENOMEM;

 axp20x->dev = &rdev->dev;
 axp20x->irq = rdev->irq;
 dev_set_drvdata(&rdev->dev, axp20x);

 ret = axp20x_match_device(axp20x);
 if (ret)
  return ret;

 axp20x->regmap = devm_regmap_init_sunxi_rsb(rdev, axp20x->regmap_cfg);
 if (IS_ERR(axp20x->regmap)) {
  ret = PTR_ERR(axp20x->regmap);
  dev_err(&rdev->dev, "regmap init failed: %d\n", ret);
  return ret;
 }

 return axp20x_device_probe(axp20x);
}
