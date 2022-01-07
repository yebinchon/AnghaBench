
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int eee_broken_modes; TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF_MDIO ;
 int IS_ENABLED (int ) ;
 int MDIO_EEE_1000KX ;
 int MDIO_EEE_1000T ;
 int MDIO_EEE_100TX ;
 int MDIO_EEE_10GKR ;
 int MDIO_EEE_10GKX4 ;
 int MDIO_EEE_10GT ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

void of_set_phy_eee_broken(struct phy_device *phydev)
{
 struct device_node *node = phydev->mdio.dev.of_node;
 u32 broken = 0;

 if (!IS_ENABLED(CONFIG_OF_MDIO))
  return;

 if (!node)
  return;

 if (of_property_read_bool(node, "eee-broken-100tx"))
  broken |= MDIO_EEE_100TX;
 if (of_property_read_bool(node, "eee-broken-1000t"))
  broken |= MDIO_EEE_1000T;
 if (of_property_read_bool(node, "eee-broken-10gt"))
  broken |= MDIO_EEE_10GT;
 if (of_property_read_bool(node, "eee-broken-1000kx"))
  broken |= MDIO_EEE_1000KX;
 if (of_property_read_bool(node, "eee-broken-10gkx4"))
  broken |= MDIO_EEE_10GKX4;
 if (of_property_read_bool(node, "eee-broken-10gkr"))
  broken |= MDIO_EEE_10GKR;

 phydev->eee_broken_modes = broken;
}
