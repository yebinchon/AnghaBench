
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_private {int media; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; int name; } ;


 scalar_t__ BANK_SELECT ;
 scalar_t__ CONTROL ;
 int CTL_POWERDOWN ;
 scalar_t__ INTERRUPT ;
 scalar_t__ RCR ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int del_timer_sync (int *) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int inw (scalar_t__) ;
 int mask_bits (int,scalar_t__) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int smc_close(struct net_device *dev)
{
    struct smc_private *smc = netdev_priv(dev);
    struct pcmcia_device *link = smc->p_dev;
    unsigned int ioaddr = dev->base_addr;

    dev_dbg(&link->dev, "%s: smc_close(), status %4.4x.\n",
   dev->name, inw(ioaddr + BANK_SELECT));

    netif_stop_queue(dev);



    SMC_SELECT_BANK(2);
    outw(0, ioaddr + INTERRUPT);
    SMC_SELECT_BANK(0);
    mask_bits(0xff00, ioaddr + RCR);
    mask_bits(0xff00, ioaddr + TCR);


    SMC_SELECT_BANK(1);
    outw(CTL_POWERDOWN, ioaddr + CONTROL );

    link->open--;
    del_timer_sync(&smc->media);

    return 0;
}
