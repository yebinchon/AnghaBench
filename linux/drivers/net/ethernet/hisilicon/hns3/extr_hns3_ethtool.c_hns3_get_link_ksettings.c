
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int phydev; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_media_type ) (struct hnae3_handle*,int*,int*) ;} ;
struct TYPE_4__ {int duplex; int speed; int mdio_support; void* port; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {struct hnae3_ae_ops* ops; } ;


 int DUPLEX_UNKNOWN ;
 int EOPNOTSUPP ;
 int ETH_MDIO_SUPPORTS_C22 ;




 int HNAE3_MODULE_TYPE_CR ;
 void* PORT_DA ;
 void* PORT_FIBRE ;
 void* PORT_NONE ;
 void* PORT_TP ;
 int SPEED_UNKNOWN ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int hns3_get_ksettings (struct hnae3_handle*,struct ethtool_link_ksettings*) ;
 int hns3_get_link (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int phy_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;
 int stub1 (struct hnae3_handle*,int*,int*) ;

__attribute__((used)) static int hns3_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *cmd)
{
 struct hnae3_handle *h = hns3_get_handle(netdev);
 const struct hnae3_ae_ops *ops;
 u8 module_type;
 u8 media_type;
 u8 link_stat;

 ops = h->ae_algo->ops;
 if (ops->get_media_type)
  ops->get_media_type(h, &media_type, &module_type);
 else
  return -EOPNOTSUPP;

 switch (media_type) {
 case 128:
  cmd->base.port = PORT_NONE;
  hns3_get_ksettings(h, cmd);
  break;
 case 129:
  if (module_type == HNAE3_MODULE_TYPE_CR)
   cmd->base.port = PORT_DA;
  else
   cmd->base.port = PORT_FIBRE;

  hns3_get_ksettings(h, cmd);
  break;
 case 131:
  cmd->base.port = PORT_NONE;
  hns3_get_ksettings(h, cmd);
  break;
 case 130:
  cmd->base.port = PORT_TP;
  if (!netdev->phydev)
   hns3_get_ksettings(h, cmd);
  else
   phy_ethtool_ksettings_get(netdev->phydev, cmd);
  break;
 default:

  netdev_warn(netdev, "Unknown media type");
  return 0;
 }


 cmd->base.mdio_support = ETH_MDIO_SUPPORTS_C22;

 link_stat = hns3_get_link(netdev);
 if (!link_stat) {
  cmd->base.speed = SPEED_UNKNOWN;
  cmd->base.duplex = DUPLEX_UNKNOWN;
 }

 return 0;
}
