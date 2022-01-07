
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int base_addr; int if_port; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ duplex; int port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 int EIO ;
 int EL3WINDOW (int) ;
 scalar_t__ EL3_CMD ;
 int FD_ENABLE ;



 scalar_t__ SPEED_10 ;
 int StartCoax ;
 scalar_t__ WN0_ADDR_CONF ;
 scalar_t__ WN4_NETDIAG ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int
el3_netdev_set_ecmd(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 u16 tmp;
 int ioaddr = dev->base_addr;

 if (cmd->base.speed != SPEED_10)
  return -EINVAL;
 if ((cmd->base.duplex != DUPLEX_HALF) &&
     (cmd->base.duplex != DUPLEX_FULL))
  return -EINVAL;


 EL3WINDOW(0);
 tmp = inw(ioaddr + WN0_ADDR_CONF);
 switch (cmd->base.port) {
 case 128:
  tmp &= ~(3<<14);
  dev->if_port = 0;
  break;
 case 130:
  tmp |= (1<<14);
  dev->if_port = 1;
  break;
 case 129:
  tmp |= (3<<14);
  dev->if_port = 3;
  break;
 default:
  return -EINVAL;
 }

 outw(tmp, ioaddr + WN0_ADDR_CONF);
 if (dev->if_port == 3) {

  tmp = inw(ioaddr + WN0_ADDR_CONF);
  if (tmp & (3 << 14)) {
   outw(StartCoax, ioaddr + EL3_CMD);
   udelay(800);
  } else
   return -EIO;
 }

 EL3WINDOW(4);
 tmp = inw(ioaddr + WN4_NETDIAG);
 if (cmd->base.duplex == DUPLEX_FULL)
  tmp |= FD_ENABLE;
 else
  tmp &= ~FD_ENABLE;
 outw(tmp, ioaddr + WN4_NETDIAG);
 EL3WINDOW(1);

 return 0;
}
