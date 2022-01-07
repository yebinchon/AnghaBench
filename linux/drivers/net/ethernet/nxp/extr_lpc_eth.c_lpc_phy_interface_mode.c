
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
typedef int phy_interface_t ;


 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_RMII ;
 char* of_get_property (scalar_t__,char*,int *) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static phy_interface_t lpc_phy_interface_mode(struct device *dev)
{
 if (dev && dev->of_node) {
  const char *mode = of_get_property(dev->of_node,
         "phy-mode", ((void*)0));
  if (mode && !strcmp(mode, "mii"))
   return PHY_INTERFACE_MODE_MII;
 }
 return PHY_INTERFACE_MODE_RMII;
}
