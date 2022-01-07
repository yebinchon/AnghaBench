
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct ethtool_eee {int eee_enabled; } ;
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {TYPE_2__* dev; } ;
typedef int phy_interface_t ;
struct TYPE_4__ {TYPE_1__* ports; } ;
struct TYPE_3__ {struct ethtool_eee eee; } ;


 unsigned int MLO_AN_PHY ;
 int b53_eee_init (struct dsa_switch*,int,struct phy_device*) ;
 int bcm_sf2_sw_mac_link_set (struct dsa_switch*,int,int ,int) ;
 struct bcm_sf2_priv* bcm_sf2_to_priv (struct dsa_switch*) ;

__attribute__((used)) static void bcm_sf2_sw_mac_link_up(struct dsa_switch *ds, int port,
       unsigned int mode,
       phy_interface_t interface,
       struct phy_device *phydev)
{
 struct bcm_sf2_priv *priv = bcm_sf2_to_priv(ds);
 struct ethtool_eee *p = &priv->dev->ports[port].eee;

 bcm_sf2_sw_mac_link_set(ds, port, interface, 1);

 if (mode == MLO_AN_PHY && phydev)
  p->eee_enabled = b53_eee_init(ds, port, phydev);
}
