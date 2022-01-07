
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* VERSION ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 char* spider_net_driver_name ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
spider_net_ethtool_get_drvinfo(struct net_device *netdev,
          struct ethtool_drvinfo *drvinfo)
{
 struct spider_net_card *card;
 card = netdev_priv(netdev);


 strlcpy(drvinfo->driver, spider_net_driver_name,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, "no information",
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, pci_name(card->pdev),
  sizeof(drvinfo->bus_info));
}
