
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; } ;


 struct nfp_app* nfp_app_from_netdev (struct net_device*) ;
 int nfp_get_drvinfo (struct nfp_app*,int ,char*,struct ethtool_drvinfo*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
nfp_app_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct nfp_app *app = nfp_app_from_netdev(netdev);

 strlcpy(drvinfo->bus_info, pci_name(app->pdev),
  sizeof(drvinfo->bus_info));
 nfp_get_drvinfo(app, app->pdev, "*", drvinfo);
}
