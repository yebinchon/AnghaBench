
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ravb_private {int phy_interface; scalar_t__ speed; scalar_t__ link; } ;
struct phy_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int ENOENT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_Asym_Pause_BIT ;
 int ETHTOOL_LINK_MODE_Pause_BIT ;
 int SPEED_100 ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 struct device_node* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct phy_device* of_phy_connect (struct net_device*,struct device_node*,int ,int ,int ) ;
 int of_phy_deregister_fixed_link (struct device_node*) ;
 scalar_t__ of_phy_is_fixed_link (struct device_node*) ;
 int of_phy_register_fixed_link (struct device_node*) ;
 int phy_attached_info (struct phy_device*) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_remove_link_mode (struct phy_device*,int ) ;
 int phy_set_max_speed (struct phy_device*,int ) ;
 int r8a7795es10 ;
 int ravb_adjust_link ;
 scalar_t__ soc_device_match (int ) ;

__attribute__((used)) static int ravb_phy_init(struct net_device *ndev)
{
 struct device_node *np = ndev->dev.parent->of_node;
 struct ravb_private *priv = netdev_priv(ndev);
 struct phy_device *phydev;
 struct device_node *pn;
 int err;

 priv->link = 0;
 priv->speed = 0;


 pn = of_parse_phandle(np, "phy-handle", 0);
 if (!pn) {



  if (of_phy_is_fixed_link(np)) {
   err = of_phy_register_fixed_link(np);
   if (err)
    return err;
  }
  pn = of_node_get(np);
 }
 phydev = of_phy_connect(ndev, pn, ravb_adjust_link, 0,
    priv->phy_interface);
 of_node_put(pn);
 if (!phydev) {
  netdev_err(ndev, "failed to connect PHY\n");
  err = -ENOENT;
  goto err_deregister_fixed_link;
 }




 if (soc_device_match(r8a7795es10)) {
  err = phy_set_max_speed(phydev, SPEED_100);
  if (err) {
   netdev_err(ndev, "failed to limit PHY to 100Mbit/s\n");
   goto err_phy_disconnect;
  }

  netdev_info(ndev, "limited PHY to 100Mbit/s\n");
 }


 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_10baseT_Half_BIT);
 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_10baseT_Full_BIT);
 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_Pause_BIT);
 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_Asym_Pause_BIT);


 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
 phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_100baseT_Half_BIT);

 phy_attached_info(phydev);

 return 0;

err_phy_disconnect:
 phy_disconnect(phydev);
err_deregister_fixed_link:
 if (of_phy_is_fixed_link(np))
  of_phy_deregister_fixed_link(np);

 return err;
}
