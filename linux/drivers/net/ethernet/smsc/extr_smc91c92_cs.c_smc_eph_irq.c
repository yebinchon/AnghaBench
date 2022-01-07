
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct smc_private {int duplex; } ;
struct TYPE_2__ {int collisions; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;


 scalar_t__ CONTROL ;
 scalar_t__ COUNTER ;
 int CTL_AUTO_RELEASE ;
 int CTL_CR_ENABLE ;
 int CTL_TE_ENABLE ;
 scalar_t__ EPH ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_ENABLE ;
 int inw (scalar_t__) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void smc_eph_irq(struct net_device *dev)
{
    struct smc_private *smc = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    u_short card_stats, ephs;

    SMC_SELECT_BANK(0);
    ephs = inw(ioaddr + EPH);
    netdev_dbg(dev, "Ethernet protocol handler interrupt, status %4.4x.\n",
        ephs);

    card_stats = inw(ioaddr + COUNTER);

    dev->stats.collisions += card_stats & 0xF;
    card_stats >>= 4;

    dev->stats.collisions += card_stats & 0xF;





    outw(inw(ioaddr + TCR) | TCR_ENABLE | smc->duplex, ioaddr + TCR);


    SMC_SELECT_BANK(1);
    outw(CTL_AUTO_RELEASE | 0x0000, ioaddr + CONTROL);
    outw(CTL_AUTO_RELEASE | CTL_TE_ENABLE | CTL_CR_ENABLE,
  ioaddr + CONTROL);
    SMC_SELECT_BANK(2);
}
