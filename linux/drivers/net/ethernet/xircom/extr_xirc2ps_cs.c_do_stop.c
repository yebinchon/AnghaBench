
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; } ;
struct local_info {struct pcmcia_device* p_dev; } ;


 int ENODEV ;
 int PutByte (int ,int) ;
 int SelectPage (int) ;
 int XIRCREG1_IMR0 ;
 int XIRCREG4_GPR1 ;
 int XIRCREG_CR ;
 int dev_dbg (int *,char*,struct net_device*) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int
do_stop(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct local_info *lp = netdev_priv(dev);
    struct pcmcia_device *link = lp->p_dev;

    dev_dbg(&link->dev, "do_stop(%p)\n", dev);

    if (!link)
 return -ENODEV;

    netif_stop_queue(dev);

    SelectPage(0);
    PutByte(XIRCREG_CR, 0);
    SelectPage(0x01);
    PutByte(XIRCREG1_IMR0, 0x00);
    SelectPage(4);
    PutByte(XIRCREG4_GPR1, 0);
    SelectPage(0);

    link->open--;
    return 0;
}
