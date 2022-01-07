
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct TYPE_3__ {int phy_id; struct net_device* dev; } ;
struct smc_private {int fast_poll; int cfg; int link_status; int duplex; int media_status; int lock; TYPE_2__ media; scalar_t__ tx_err; scalar_t__ last_rx; TYPE_1__ mii_if; int watchdog; scalar_t__ rx_ovrn; } ;
struct net_device {unsigned int base_addr; scalar_t__ if_port; int irq; } ;


 scalar_t__ BANK_SELECT ;
 int CFG_AUI_SELECT ;
 int CFG_MII_SELECT ;
 scalar_t__ CONFIG ;
 scalar_t__ EPH ;
 int EPH_16COL ;
 int EPH_LINK_OK ;
 int HZ ;
 scalar_t__ INTERRUPT ;
 int MC_RESET ;
 scalar_t__ MMU_CMD ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_FDUPLX ;
 int add_timer (TYPE_2__*) ;
 struct smc_private* from_timer (int ,struct timer_list*,int ) ;
 int inw (scalar_t__) ;
 void* jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mdio_read (struct net_device*,int,int) ;
 int media ;
 int netdev_info (struct net_device*,char*,...) ;
 int netif_device_present (struct net_device*) ;
 int outw (int,scalar_t__) ;
 struct smc_private* smc ;
 int smc_interrupt (int ,struct net_device*) ;
 int smc_set_xcvr (struct net_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (void*,scalar_t__) ;

__attribute__((used)) static void media_check(struct timer_list *t)
{
    struct smc_private *smc = from_timer(smc, t, media);
    struct net_device *dev = smc->mii_if.dev;
    unsigned int ioaddr = dev->base_addr;
    u_short i, media, saved_bank;
    u_short link;
    unsigned long flags;

    spin_lock_irqsave(&smc->lock, flags);

    saved_bank = inw(ioaddr + BANK_SELECT);

    if (!netif_device_present(dev))
 goto reschedule;

    SMC_SELECT_BANK(2);


    if (smc->rx_ovrn) {
 outw(MC_RESET, ioaddr + MMU_CMD);
 smc->rx_ovrn = 0;
    }
    i = inw(ioaddr + INTERRUPT);
    SMC_SELECT_BANK(0);
    media = inw(ioaddr + EPH) & EPH_LINK_OK;
    SMC_SELECT_BANK(1);
    media |= (inw(ioaddr + CONFIG) & CFG_AUI_SELECT) ? 2 : 1;

    SMC_SELECT_BANK(saved_bank);
    spin_unlock_irqrestore(&smc->lock, flags);



    if (smc->watchdog++ && ((i>>8) & i)) {
 if (!smc->fast_poll)
     netdev_info(dev, "interrupt(s) dropped!\n");
 local_irq_save(flags);
 smc_interrupt(dev->irq, dev);
 local_irq_restore(flags);
 smc->fast_poll = HZ;
    }
    if (smc->fast_poll) {
 smc->fast_poll--;
 smc->media.expires = jiffies + HZ/100;
 add_timer(&smc->media);
 return;
    }

    spin_lock_irqsave(&smc->lock, flags);

    saved_bank = inw(ioaddr + BANK_SELECT);

    if (smc->cfg & CFG_MII_SELECT) {
 if (smc->mii_if.phy_id < 0)
     goto reschedule;

 SMC_SELECT_BANK(3);
 link = mdio_read(dev, smc->mii_if.phy_id, 1);
 if (!link || (link == 0xffff)) {
     netdev_info(dev, "MII is missing!\n");
     smc->mii_if.phy_id = -1;
     goto reschedule;
 }

 link &= 0x0004;
 if (link != smc->link_status) {
     u_short p = mdio_read(dev, smc->mii_if.phy_id, 5);
     netdev_info(dev, "%s link beat\n", link ? "found" : "lost");
     smc->duplex = (((p & 0x0100) || ((p & 0x1c0) == 0x40))
      ? TCR_FDUPLX : 0);
     if (link) {
  netdev_info(dev, "autonegotiation complete: "
       "%dbaseT-%cD selected\n",
       (p & 0x0180) ? 100 : 10, smc->duplex ? 'F' : 'H');
     }
     SMC_SELECT_BANK(0);
     outw(inw(ioaddr + TCR) | smc->duplex, ioaddr + TCR);
     smc->link_status = link;
 }
 goto reschedule;
    }


    if (time_after(jiffies, smc->last_rx + HZ)) {
 if (smc->tx_err || (smc->media_status & EPH_16COL))
     media |= EPH_16COL;
    }
    smc->tx_err = 0;

    if (media != smc->media_status) {
 if ((media & smc->media_status & 1) &&
     ((smc->media_status ^ media) & EPH_LINK_OK))
     netdev_info(dev, "%s link beat\n",
   smc->media_status & EPH_LINK_OK ? "lost" : "found");
 else if ((media & smc->media_status & 2) &&
   ((smc->media_status ^ media) & EPH_16COL))
     netdev_info(dev, "coax cable %s\n",
   media & EPH_16COL ? "problem" : "ok");
 if (dev->if_port == 0) {
     if (media & 1) {
  if (media & EPH_LINK_OK)
      netdev_info(dev, "flipped to 10baseT\n");
  else
      smc_set_xcvr(dev, 2);
     } else {
  if (media & EPH_16COL)
      smc_set_xcvr(dev, 1);
  else
      netdev_info(dev, "flipped to 10base2\n");
     }
 }
 smc->media_status = media;
    }

reschedule:
    smc->media.expires = jiffies + HZ;
    add_timer(&smc->media);
    SMC_SELECT_BANK(saved_bank);
    spin_unlock_irqrestore(&smc->lock, flags);
}
