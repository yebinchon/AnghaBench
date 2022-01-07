
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct bus_type {int dummy; } ;
typedef int phy_interface_t ;


 int EINVAL ;
 int ENODEV ;
 struct phy_device* ERR_PTR (int) ;
 struct device* bus_find_device_by_name (struct bus_type*,int *,char const*) ;
 struct bus_type mdio_bus_type ;
 int phy_attach_direct (struct net_device*,struct phy_device*,int ,int ) ;
 int pr_err (char*,char const*) ;
 int put_device (struct device*) ;
 struct phy_device* to_phy_device (struct device*) ;

struct phy_device *phy_attach(struct net_device *dev, const char *bus_id,
         phy_interface_t interface)
{
 struct bus_type *bus = &mdio_bus_type;
 struct phy_device *phydev;
 struct device *d;
 int rc;

 if (!dev)
  return ERR_PTR(-EINVAL);




 d = bus_find_device_by_name(bus, ((void*)0), bus_id);
 if (!d) {
  pr_err("PHY %s not found\n", bus_id);
  return ERR_PTR(-ENODEV);
 }
 phydev = to_phy_device(d);

 rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
 put_device(d);
 if (rc)
  return ERR_PTR(rc);

 return phydev;
}
