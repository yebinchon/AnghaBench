
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int phy_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PHY_MODE_SPECIAL ;
 struct ef4_nic* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_phy_flash_cfg(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct ef4_nic *efx = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", !!(efx->phy_mode & PHY_MODE_SPECIAL));
}
