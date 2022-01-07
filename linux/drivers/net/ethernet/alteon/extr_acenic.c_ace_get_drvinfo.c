
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ace_private {int firmware_major; int firmware_minor; int firmware_fix; scalar_t__ pdev; } ;


 struct ace_private* netdev_priv (struct net_device*) ;
 char* pci_name (scalar_t__) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void ace_get_drvinfo(struct net_device *dev,
       struct ethtool_drvinfo *info)
{
 struct ace_private *ap = netdev_priv(dev);

 strlcpy(info->driver, "acenic", sizeof(info->driver));
 snprintf(info->version, sizeof(info->version), "%i.%i.%i",
   ap->firmware_major, ap->firmware_minor,
   ap->firmware_fix);

 if (ap->pdev)
  strlcpy(info->bus_info, pci_name(ap->pdev),
   sizeof(info->bus_info));

}
