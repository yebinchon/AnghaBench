
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {scalar_t__ link; } ;
struct fixed_phy_status {int link; int asym_pause; int pause; int duplex; int speed; } ;
struct device {struct bcmgenet_platform_data* platform_data; } ;
struct bcmgenet_priv {scalar_t__ phy_interface; int dev; TYPE_1__* pdev; } ;
struct bcmgenet_platform_data {scalar_t__ phy_interface; int phy_address; int phy_duplex; int phy_speed; scalar_t__ mdio_enabled; } ;
struct TYPE_2__ {int id; struct device dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int MII_BUS_ID_SIZE ;
 char* PHY_ID_FMT ;
 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int PHY_POLL ;
 char* UNIMAC_MDIO_DRV_NAME ;
 int dev_err (struct device*,char*) ;
 struct phy_device* fixed_phy_register (int ,struct fixed_phy_status*,int *) ;
 struct phy_device* phy_attach (int ,char*,scalar_t__) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int bcmgenet_mii_pd_init(struct bcmgenet_priv *priv)
{
 struct device *kdev = &priv->pdev->dev;
 struct bcmgenet_platform_data *pd = kdev->platform_data;
 char phy_name[MII_BUS_ID_SIZE + 3];
 char mdio_bus_id[MII_BUS_ID_SIZE];
 struct phy_device *phydev;

 snprintf(mdio_bus_id, MII_BUS_ID_SIZE, "%s-%d",
   UNIMAC_MDIO_DRV_NAME, priv->pdev->id);

 if (pd->phy_interface != PHY_INTERFACE_MODE_MOCA && pd->mdio_enabled) {
  snprintf(phy_name, MII_BUS_ID_SIZE, PHY_ID_FMT,
    mdio_bus_id, pd->phy_address);




  phydev = phy_attach(priv->dev, phy_name, pd->phy_interface);
  if (!phydev) {
   dev_err(kdev, "failed to register PHY device\n");
   return -ENODEV;
  }
 } else {




  struct fixed_phy_status fphy_status = {
   .link = 1,
   .speed = pd->phy_speed,
   .duplex = pd->phy_duplex,
   .pause = 0,
   .asym_pause = 0,
  };

  phydev = fixed_phy_register(PHY_POLL, &fphy_status, ((void*)0));
  if (!phydev || IS_ERR(phydev)) {
   dev_err(kdev, "failed to register fixed PHY device\n");
   return -ENODEV;
  }


  phydev->link = 0;

 }

 priv->phy_interface = pd->phy_interface;

 return 0;
}
