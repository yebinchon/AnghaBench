
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
typedef scalar_t__ phy_interface_t ;


 int GSWIP_MII_CFG_EN ;
 scalar_t__ PHY_INTERFACE_MODE_INTERNAL ;
 int gswip_mii_mask_cfg (struct gswip_priv*,int ,int ,int) ;

__attribute__((used)) static void gswip_phylink_mac_link_up(struct dsa_switch *ds, int port,
          unsigned int mode,
          phy_interface_t interface,
          struct phy_device *phydev)
{
 struct gswip_priv *priv = ds->priv;


 if (interface != PHY_INTERFACE_MODE_INTERNAL)
  gswip_mii_mask_cfg(priv, 0, GSWIP_MII_CFG_EN, port);
}
