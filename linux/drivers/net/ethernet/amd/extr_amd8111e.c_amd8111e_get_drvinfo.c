
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct amd8111e_priv {struct pci_dev* pci_dev; } ;


 int MODULE_NAME ;
 int MODULE_VERS ;
 int chip_version ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int pci_name (struct pci_dev*) ;
 int snprintf (int ,int,char*,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void amd8111e_get_drvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 struct pci_dev *pci_dev = lp->pci_dev;
 strlcpy(info->driver, MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, MODULE_VERS, sizeof(info->version));
 snprintf(info->fw_version, sizeof(info->fw_version),
  "%u", chip_version);
 strlcpy(info->bus_info, pci_name(pci_dev), sizeof(info->bus_info));
}
