
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct ei_device {scalar_t__ priv; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int pci_name (struct pci_dev*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ne2k_pci_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 struct ei_device *ei = netdev_priv(dev);
 struct pci_dev *pci_dev = (struct pci_dev *) ei->priv;

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(pci_dev), sizeof(info->bus_info));
}
