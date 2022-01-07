
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct efx_nic* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_phy_type(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct efx_nic *efx = dev_get_drvdata(dev);
 return sprintf(buf, "%d\n", efx->phy_type);
}
