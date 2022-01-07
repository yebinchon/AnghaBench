
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct mii_bus {int dummy; } ;


 scalar_t__ IS_ERR (struct phy_device*) ;
 struct phy_device* get_phy_device (struct mii_bus*,int,int) ;
 int phy_device_free (struct phy_device*) ;
 scalar_t__ phy_device_register (struct phy_device*) ;

struct phy_device *xgene_enet_phy_register(struct mii_bus *bus, int phy_addr)
{
 struct phy_device *phy_dev;

 phy_dev = get_phy_device(bus, phy_addr, 0);
 if (!phy_dev || IS_ERR(phy_dev))
  return ((void*)0);

 if (phy_device_register(phy_dev))
  phy_device_free(phy_dev);

 return phy_dev;
}
