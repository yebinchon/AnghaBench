
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_netdev {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int KBUILD_MODNAME ;
 int NTB_NETDEV_VER ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ntb_get_drvinfo(struct net_device *ndev,
       struct ethtool_drvinfo *info)
{
 struct ntb_netdev *dev = netdev_priv(ndev);

 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->version, NTB_NETDEV_VER, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(dev->pdev), sizeof(info->bus_info));
}
