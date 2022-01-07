
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ionic_xcvr_status {int* sprom; } ;
struct ionic_lif {TYPE_3__* ionic; } ;
struct ionic_dev {TYPE_2__* port_info; } ;
struct ethtool_modinfo {int eeprom_len; int type; } ;
struct TYPE_6__ {struct ionic_dev idev; } ;
struct TYPE_4__ {struct ionic_xcvr_status xcvr; } ;
struct TYPE_5__ {TYPE_1__ status; } ;


 int ETH_MODULE_SFF_8079 ;
 int ETH_MODULE_SFF_8079_LEN ;
 int ETH_MODULE_SFF_8436 ;
 int ETH_MODULE_SFF_8436_LEN ;
 int netdev_info (struct net_device*,char*,int) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_get_module_info(struct net_device *netdev,
     struct ethtool_modinfo *modinfo)

{
 struct ionic_lif *lif = netdev_priv(netdev);
 struct ionic_dev *idev = &lif->ionic->idev;
 struct ionic_xcvr_status *xcvr;

 xcvr = &idev->port_info->status.xcvr;


 switch (xcvr->sprom[0]) {
 case 0x03:
  modinfo->type = ETH_MODULE_SFF_8079;
  modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
  break;
 case 0x0D:
 case 0x11:
  modinfo->type = ETH_MODULE_SFF_8436;
  modinfo->eeprom_len = ETH_MODULE_SFF_8436_LEN;
  break;
 default:
  netdev_info(netdev, "unknown xcvr type 0x%02x\n",
       xcvr->sprom[0]);
  break;
 }

 return 0;
}
