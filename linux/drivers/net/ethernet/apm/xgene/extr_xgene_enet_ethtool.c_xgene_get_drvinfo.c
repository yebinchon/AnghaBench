
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {struct platform_device* pdev; } ;
struct platform_device {char* name; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int ETHTOOL_FWVERS_LEN ;
 char* XGENE_DRV_VERSION ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;
 int snprintf (int ,int ,char*) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void xgene_get_drvinfo(struct net_device *ndev,
         struct ethtool_drvinfo *info)
{
 struct xgene_enet_pdata *pdata = netdev_priv(ndev);
 struct platform_device *pdev = pdata->pdev;

 strcpy(info->driver, "xgene_enet");
 strcpy(info->version, XGENE_DRV_VERSION);
 snprintf(info->fw_version, ETHTOOL_FWVERS_LEN, "N/A");
 sprintf(info->bus_info, "%s", pdev->name);
}
