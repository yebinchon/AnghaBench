
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {int base_addr; } ;
struct TYPE_4__ {int speed; int duplex; int port; } ;
struct TYPE_3__ {int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int EL3WINDOW (int) ;
 int FD_ENABLE ;
 int PORT_AUI ;
 int PORT_BNC ;
 int PORT_TP ;
 int SPEED_10 ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_AUI ;
 int SUPPORTED_BNC ;
 int SUPPORTED_TP ;
 scalar_t__ WN0_ADDR_CONF ;
 scalar_t__ WN0_CONF_CTRL ;
 scalar_t__ WN4_NETDIAG ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int) ;
 int inw (scalar_t__) ;

__attribute__((used)) static void
el3_netdev_get_ecmd(struct net_device *dev, struct ethtool_link_ksettings *cmd)
{
 u16 tmp;
 int ioaddr = dev->base_addr;
 u32 supported;

 EL3WINDOW(0);

 tmp = inw(ioaddr + WN0_ADDR_CONF);
 switch (tmp >> 14) {
 case 0:
  cmd->base.port = PORT_TP;
  break;
 case 1:
  cmd->base.port = PORT_AUI;
  break;
 case 3:
  cmd->base.port = PORT_BNC;
 default:
  break;
 }

 cmd->base.duplex = DUPLEX_HALF;
 supported = 0;
 tmp = inw(ioaddr + WN0_CONF_CTRL);
 if (tmp & (1<<13))
  supported |= SUPPORTED_AUI;
 if (tmp & (1<<12))
  supported |= SUPPORTED_BNC;
 if (tmp & (1<<9)) {
  supported |= SUPPORTED_TP | SUPPORTED_10baseT_Half |
    SUPPORTED_10baseT_Full;
  EL3WINDOW(4);
  tmp = inw(ioaddr + WN4_NETDIAG);
  if (tmp & FD_ENABLE)
   cmd->base.duplex = DUPLEX_FULL;
 }

 ethtool_convert_legacy_u32_to_link_mode(cmd->link_modes.supported,
      supported);
 cmd->base.speed = SPEED_10;
 EL3WINDOW(1);
}
