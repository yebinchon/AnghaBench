
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_priv_data {TYPE_1__* pdev; struct regulator* regulator; } ;
struct regulator {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_err (struct device*,char*) ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;

__attribute__((used)) static int phy_power_on(struct rk_priv_data *bsp_priv, bool enable)
{
 struct regulator *ldo = bsp_priv->regulator;
 int ret;
 struct device *dev = &bsp_priv->pdev->dev;

 if (!ldo)
  return 0;

 if (enable) {
  ret = regulator_enable(ldo);
  if (ret)
   dev_err(dev, "fail to enable phy-supply\n");
 } else {
  ret = regulator_disable(ldo);
  if (ret)
   dev_err(dev, "fail to disable phy-supply\n");
 }

 return 0;
}
