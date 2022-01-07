
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int interface; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ phy_is_internal (struct phy_device*) ;
 char* phy_modes (int ) ;
 int sprintf (char*,char*,char const*) ;
 struct phy_device* to_phy_device (struct device*) ;

__attribute__((used)) static ssize_t
phy_interface_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct phy_device *phydev = to_phy_device(dev);
 const char *mode = ((void*)0);

 if (phy_is_internal(phydev))
  mode = "internal";
 else
  mode = phy_modes(phydev->interface);

 return sprintf(buf, "%s\n", mode);
}
