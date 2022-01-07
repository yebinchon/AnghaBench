
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_2__ {scalar_t__ flags; } ;


 scalar_t__ BANK_SELECT ;
 scalar_t__ BASE_ADDR ;
 int CFG_16BIT ;
 scalar_t__ CONFIG ;
 scalar_t__ CONTROL ;
 int ENODEV ;
 scalar_t__ IO_DATA_PATH_WIDTH_AUTO ;
 scalar_t__ REVISION ;
 int SMC_SELECT_BANK (int) ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int mdelay (int) ;
 int netdev_info (struct net_device*,char*) ;
 int outb (int,scalar_t__) ;
 int outw (int ,scalar_t__) ;
 int pcmcia_fixup_iowidth (struct pcmcia_device*) ;
 int smc91c92_resume (struct pcmcia_device*) ;
 int smc91c92_suspend (struct pcmcia_device*) ;

__attribute__((used)) static int check_sig(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    unsigned int ioaddr = dev->base_addr;
    int width;
    u_short s;

    SMC_SELECT_BANK(1);
    if (inw(ioaddr + BANK_SELECT) >> 8 != 0x33) {

 outw(0, ioaddr + CONTROL);
 mdelay(55);
    }


    width = (link->resource[0]->flags == IO_DATA_PATH_WIDTH_AUTO);
    s = inb(ioaddr + CONFIG);
    if (width)
 s |= CFG_16BIT;
    else
 s &= ~CFG_16BIT;
    outb(s, ioaddr + CONFIG);


    s = inw(ioaddr + BASE_ADDR);
    if ((inw(ioaddr + BANK_SELECT) >> 8 == 0x33) &&
 ((s >> 8) != (s & 0xff))) {
 SMC_SELECT_BANK(3);
 s = inw(ioaddr + REVISION);
 return s & 0xff;
    }

    if (width) {
     netdev_info(dev, "using 8-bit IO window\n");

     smc91c92_suspend(link);
     pcmcia_fixup_iowidth(link);
     smc91c92_resume(link);
     return check_sig(link);
    }
    return -ENODEV;
}
