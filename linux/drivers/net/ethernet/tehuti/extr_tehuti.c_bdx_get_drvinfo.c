
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct bdx_priv {int pdev; } ;


 char* BDX_DRV_NAME ;
 char* BDX_DRV_VERSION ;
 struct bdx_priv* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
bdx_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct bdx_priv *priv = netdev_priv(netdev);

 strlcpy(drvinfo->driver, BDX_DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, BDX_DRV_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(priv->pdev),
  sizeof(drvinfo->bus_info));
}
