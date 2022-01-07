
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mv643xx_eth_private {TYPE_2__* dev; } ;
struct device {scalar_t__ of_node; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int PHY_INTERFACE_MODE_GMII ;
 int of_get_phy_mode (scalar_t__) ;

__attribute__((used)) static int get_phy_mode(struct mv643xx_eth_private *mp)
{
 struct device *dev = mp->dev->dev.parent;
 int iface = -1;

 if (dev->of_node)
  iface = of_get_phy_mode(dev->of_node);




 if (iface < 0)
  iface = PHY_INTERFACE_MODE_GMII;
 return iface;
}
