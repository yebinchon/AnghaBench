
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
typedef int phy_interface_t ;


 int GSWIP_MII_CFG_EN ;
 int gswip_mii_mask_cfg (struct gswip_priv*,int ,int ,int) ;

__attribute__((used)) static void gswip_phylink_mac_link_down(struct dsa_switch *ds, int port,
     unsigned int mode,
     phy_interface_t interface)
{
 struct gswip_priv *priv = ds->priv;

 gswip_mii_mask_cfg(priv, GSWIP_MII_CFG_EN, 0, port);
}
