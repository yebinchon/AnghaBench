
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink {scalar_t__ link_an_mode; int link_interface; int netdev; } ;
struct phy_device {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 scalar_t__ MLO_AN_FIXED ;
 scalar_t__ MLO_AN_INBAND ;
 scalar_t__ MLO_AN_PHY ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 struct phy_device* of_phy_attach (int ,struct device_node*,int ,int ) ;
 int phy_detach (struct phy_device*) ;
 scalar_t__ phy_interface_mode_is_8023z (int ) ;
 int phylink_bringup_phy (struct phylink*,struct phy_device*) ;

int phylink_of_phy_connect(struct phylink *pl, struct device_node *dn,
      u32 flags)
{
 struct device_node *phy_node;
 struct phy_device *phy_dev;
 int ret;


 if (pl->link_an_mode == MLO_AN_FIXED ||
     (pl->link_an_mode == MLO_AN_INBAND &&
      phy_interface_mode_is_8023z(pl->link_interface)))
  return 0;

 phy_node = of_parse_phandle(dn, "phy-handle", 0);
 if (!phy_node)
  phy_node = of_parse_phandle(dn, "phy", 0);
 if (!phy_node)
  phy_node = of_parse_phandle(dn, "phy-device", 0);

 if (!phy_node) {
  if (pl->link_an_mode == MLO_AN_PHY)
   return -ENODEV;
  return 0;
 }

 phy_dev = of_phy_attach(pl->netdev, phy_node, flags,
    pl->link_interface);

 of_node_put(phy_node);

 if (!phy_dev)
  return -ENODEV;

 ret = phylink_bringup_phy(pl, phy_dev);
 if (ret)
  phy_detach(phy_dev);

 return ret;
}
