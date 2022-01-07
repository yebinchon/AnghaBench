
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {scalar_t__ pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* VELOCITY_NAME ;
 char* VELOCITY_VERSION ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 char* pci_name (scalar_t__) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void velocity_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct velocity_info *vptr = netdev_priv(dev);

 strlcpy(info->driver, VELOCITY_NAME, sizeof(info->driver));
 strlcpy(info->version, VELOCITY_VERSION, sizeof(info->version));
 if (vptr->pdev)
  strlcpy(info->bus_info, pci_name(vptr->pdev),
      sizeof(info->bus_info));
 else
  strlcpy(info->bus_info, "platform", sizeof(info->bus_info));
}
