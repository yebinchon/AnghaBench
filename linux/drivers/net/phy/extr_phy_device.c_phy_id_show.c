
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ phy_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long) ;
 struct phy_device* to_phy_device (struct device*) ;

__attribute__((used)) static ssize_t
phy_id_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct phy_device *phydev = to_phy_device(dev);

 return sprintf(buf, "0x%.8lx\n", (unsigned long)phydev->phy_id);
}
