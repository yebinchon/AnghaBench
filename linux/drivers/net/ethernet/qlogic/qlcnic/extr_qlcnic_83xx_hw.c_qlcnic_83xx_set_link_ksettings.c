
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_hardware_context {int port_config; } ;
struct qlcnic_adapter {int netdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_2__ {scalar_t__ duplex; int speed; scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int QLC_83XX_100_CAPABLE ;
 int QLC_83XX_10G_CAPABLE ;
 int QLC_83XX_10_CAPABLE ;
 int QLC_83XX_1G_CAPABLE ;
 int QLC_83XX_AUTONEG_ENABLE ;




 int netdev_info (int ,char*) ;
 int qlcnic_83xx_set_port_config (struct qlcnic_adapter*) ;

int qlcnic_83xx_set_link_ksettings(struct qlcnic_adapter *adapter,
       const struct ethtool_link_ksettings *ecmd)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 u32 config = adapter->ahw->port_config;
 int status = 0;


 if (ecmd->base.duplex == DUPLEX_HALF) {
  netdev_info(adapter->netdev,
       "Half duplex mode not supported\n");
  return -EINVAL;
 }

 if (ecmd->base.autoneg) {
  ahw->port_config |= QLC_83XX_AUTONEG_ENABLE;
  ahw->port_config |= (QLC_83XX_100_CAPABLE |
         QLC_83XX_1G_CAPABLE |
         QLC_83XX_10G_CAPABLE);
 } else {
  ahw->port_config &= ~QLC_83XX_AUTONEG_ENABLE;
  switch (ecmd->base.speed) {
  case 131:
   ahw->port_config &= ~(QLC_83XX_100_CAPABLE |
           QLC_83XX_1G_CAPABLE |
           QLC_83XX_10G_CAPABLE);
   ahw->port_config |= QLC_83XX_10_CAPABLE;
   break;
  case 130:
   ahw->port_config &= ~(QLC_83XX_10_CAPABLE |
           QLC_83XX_1G_CAPABLE |
           QLC_83XX_10G_CAPABLE);
   ahw->port_config |= QLC_83XX_100_CAPABLE;
   break;
  case 129:
   ahw->port_config &= ~(QLC_83XX_10_CAPABLE |
           QLC_83XX_100_CAPABLE |
           QLC_83XX_10G_CAPABLE);
   ahw->port_config |= QLC_83XX_1G_CAPABLE;
   break;
  case 128:
   ahw->port_config &= ~(QLC_83XX_10_CAPABLE |
           QLC_83XX_100_CAPABLE |
           QLC_83XX_1G_CAPABLE);
   ahw->port_config |= QLC_83XX_10G_CAPABLE;
   break;
  default:
   return -EINVAL;
  }
 }
 status = qlcnic_83xx_set_port_config(adapter);
 if (status) {
  netdev_info(adapter->netdev,
       "Failed to Set Link Speed and autoneg.\n");
  ahw->port_config = config;
 }

 return status;
}
