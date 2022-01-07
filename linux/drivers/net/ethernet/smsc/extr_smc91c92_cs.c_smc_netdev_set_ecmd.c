
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ duplex; scalar_t__ port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 scalar_t__ DUPLEX_FULL ;
 scalar_t__ DUPLEX_HALF ;
 int EINVAL ;
 scalar_t__ PORT_AUI ;
 scalar_t__ PORT_TP ;
 int SMC_SELECT_BANK (int ) ;
 scalar_t__ SPEED_10 ;
 scalar_t__ TCR ;
 int TCR_FDUPLX ;
 int inw (scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int smc_set_xcvr (struct net_device*,int) ;

__attribute__((used)) static int smc_netdev_set_ecmd(struct net_device *dev,
          const struct ethtool_link_ksettings *ecmd)
{
 u16 tmp;
 unsigned int ioaddr = dev->base_addr;

 if (ecmd->base.speed != SPEED_10)
  return -EINVAL;
 if (ecmd->base.duplex != DUPLEX_HALF &&
     ecmd->base.duplex != DUPLEX_FULL)
  return -EINVAL;
 if (ecmd->base.port != PORT_TP && ecmd->base.port != PORT_AUI)
  return -EINVAL;

 if (ecmd->base.port == PORT_AUI)
  smc_set_xcvr(dev, 1);
 else
  smc_set_xcvr(dev, 0);

 SMC_SELECT_BANK(0);
 tmp = inw(ioaddr + TCR);
 if (ecmd->base.duplex == DUPLEX_FULL)
  tmp |= TCR_FDUPLX;
 else
  tmp &= ~TCR_FDUPLX;
 outw(tmp, ioaddr + TCR);

 return 0;
}
