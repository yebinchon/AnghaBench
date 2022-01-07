
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct linux_prom_registers {int which_io; } ;
struct happy_meal {int happy_flags; struct platform_device* happy_dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int HFLAG_PCI ;
 struct happy_meal* netdev_priv (struct net_device*) ;
 struct linux_prom_registers* of_get_property (int ,char*,int *) ;
 char* pci_name (struct platform_device*) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void hme_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct happy_meal *hp = netdev_priv(dev);

 strlcpy(info->driver, "sunhme", sizeof(info->driver));
 strlcpy(info->version, "2.02", sizeof(info->version));
 if (hp->happy_flags & HFLAG_PCI) {
  struct pci_dev *pdev = hp->happy_dev;
  strlcpy(info->bus_info, pci_name(pdev), sizeof(info->bus_info));
 }
}
