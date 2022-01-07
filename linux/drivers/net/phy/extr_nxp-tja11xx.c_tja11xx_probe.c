
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tja11xx_priv {char* hwmon_name; int hwmon_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {TYPE_1__ mdio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (int ) ;
 int dev_name (struct device*) ;
 int devm_hwmon_device_register_with_info (struct device*,char*,struct phy_device*,int *,int *) ;
 char* devm_kstrdup (struct device*,int ,int ) ;
 struct tja11xx_priv* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ hwmon_is_bad_char (char) ;
 int tja11xx_hwmon_chip_info ;

__attribute__((used)) static int tja11xx_probe(struct phy_device *phydev)
{
 struct device *dev = &phydev->mdio.dev;
 struct tja11xx_priv *priv;
 int i;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->hwmon_name = devm_kstrdup(dev, dev_name(dev), GFP_KERNEL);
 if (!priv->hwmon_name)
  return -ENOMEM;

 for (i = 0; priv->hwmon_name[i]; i++)
  if (hwmon_is_bad_char(priv->hwmon_name[i]))
   priv->hwmon_name[i] = '_';

 priv->hwmon_dev =
  devm_hwmon_device_register_with_info(dev, priv->hwmon_name,
           phydev,
           &tja11xx_hwmon_chip_info,
           ((void*)0));

 return PTR_ERR_OR_ZERO(priv->hwmon_dev);
}
