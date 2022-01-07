
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {TYPE_2__ mdio; } ;
struct device_node {int dummy; } ;


 int CONFIG_OF_MDIO ;
 int IS_ENABLED (int ) ;
 int __set_phy_supported (struct phy_device*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

void of_set_phy_supported(struct phy_device *phydev)
{
 struct device_node *node = phydev->mdio.dev.of_node;
 u32 max_speed;

 if (!IS_ENABLED(CONFIG_OF_MDIO))
  return;

 if (!node)
  return;

 if (!of_property_read_u32(node, "max-speed", &max_speed))
  __set_phy_supported(phydev, max_speed);
}
