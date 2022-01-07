
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int phy_interface_t ;


 int ENODEV ;
 struct phy_device* ERR_PTR (int) ;
 struct device* bus_find_device_by_name (int *,int *,char const*) ;
 int mdio_bus_type ;
 int phy_connect_direct (struct net_device*,struct phy_device*,void (*) (struct net_device*),int ) ;
 int pr_err (char*,char const*) ;
 int put_device (struct device*) ;
 struct phy_device* to_phy_device (struct device*) ;

struct phy_device *phy_connect(struct net_device *dev, const char *bus_id,
          void (*handler)(struct net_device *),
          phy_interface_t interface)
{
 struct phy_device *phydev;
 struct device *d;
 int rc;




 d = bus_find_device_by_name(&mdio_bus_type, ((void*)0), bus_id);
 if (!d) {
  pr_err("PHY %s not found\n", bus_id);
  return ERR_PTR(-ENODEV);
 }
 phydev = to_phy_device(d);

 rc = phy_connect_direct(dev, phydev, handler, interface);
 put_device(d);
 if (rc)
  return ERR_PTR(rc);

 return phydev;
}
