
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int devices_in_package; } ;
struct phy_device {TYPE_1__ mdio; TYPE_2__ c45_ids; int is_c45; } ;
struct mv3310_priv {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MDIO_DEVS_AN ;
 int MDIO_DEVS_PMAPMD ;
 int MDIO_MMD_PMAPMD ;
 int MV_PMA_BOOT ;
 int MV_PMA_BOOT_FATAL ;
 int dev_set_drvdata (int *,struct mv3310_priv*) ;
 int dev_warn (int *,char*,int) ;
 struct mv3310_priv* devm_kzalloc (int *,int,int ) ;
 int mv3310_hwmon_probe (struct phy_device*) ;
 int phy_read_mmd (struct phy_device*,int ,int ) ;

__attribute__((used)) static int mv3310_probe(struct phy_device *phydev)
{
 struct mv3310_priv *priv;
 u32 mmd_mask = MDIO_DEVS_PMAPMD | MDIO_DEVS_AN;
 int ret;

 if (!phydev->is_c45 ||
     (phydev->c45_ids.devices_in_package & mmd_mask) != mmd_mask)
  return -ENODEV;

 ret = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MV_PMA_BOOT);
 if (ret < 0)
  return ret;

 if (ret & MV_PMA_BOOT_FATAL) {
  dev_warn(&phydev->mdio.dev,
    "PHY failed to boot firmware, status=%04x\n", ret);
  return -ENODEV;
 }

 priv = devm_kzalloc(&phydev->mdio.dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev_set_drvdata(&phydev->mdio.dev, priv);

 ret = mv3310_hwmon_probe(phydev);
 if (ret)
  return ret;

 return 0;
}
