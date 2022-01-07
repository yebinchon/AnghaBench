
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gve_priv {int pdev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* gve_version_str ;
 struct gve_priv* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void gve_get_drvinfo(struct net_device *netdev,
       struct ethtool_drvinfo *info)
{
 struct gve_priv *priv = netdev_priv(netdev);

 strlcpy(info->driver, "gve", sizeof(info->driver));
 strlcpy(info->version, gve_version_str, sizeof(info->version));
 strlcpy(info->bus_info, pci_name(priv->pdev), sizeof(info->bus_info));
}
