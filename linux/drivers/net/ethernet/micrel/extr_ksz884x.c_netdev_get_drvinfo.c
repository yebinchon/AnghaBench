
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int pdev; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
 struct ethtool_drvinfo *info)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(hw_priv->pdev),
  sizeof(info->bus_info));
}
