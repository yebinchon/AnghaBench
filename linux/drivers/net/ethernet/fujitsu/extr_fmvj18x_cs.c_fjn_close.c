
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; } ;
struct net_device {unsigned int base_addr; int name; } ;
struct local_info {scalar_t__ cardtype; scalar_t__ open_time; struct pcmcia_device* p_dev; } ;


 int CHIP_OFF ;
 int CONFIG0_RST ;
 int CONFIG0_RST_1 ;
 scalar_t__ CONFIG_0 ;
 scalar_t__ CONFIG_1 ;
 int INTR_OFF ;
 scalar_t__ LAN_CTRL ;
 scalar_t__ MBH10302 ;
 struct local_info* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 int pr_debug (char*,int ) ;
 scalar_t__ sram_config ;

__attribute__((used)) static int fjn_close(struct net_device *dev)
{
    struct local_info *lp = netdev_priv(dev);
    struct pcmcia_device *link = lp->p_dev;
    unsigned int ioaddr = dev->base_addr;

    pr_debug("fjn_close('%s').\n", dev->name);

    lp->open_time = 0;
    netif_stop_queue(dev);


    if( sram_config == 0 )
 outb(CONFIG0_RST ,ioaddr + CONFIG_0);
    else
 outb(CONFIG0_RST_1 ,ioaddr + CONFIG_0);




    outb(CHIP_OFF ,ioaddr + CONFIG_1);


    if (lp->cardtype == MBH10302)
 outb(INTR_OFF, ioaddr + LAN_CTRL);

    link->open--;

    return 0;
}
