
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int config_base; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; int* dev_addr; } ;
struct hw_info {int dummy; } ;


 scalar_t__ E8390_CMD ;
 int E8390_RREAD ;
 int E8390_START ;
 scalar_t__ EN0_DCFG ;
 scalar_t__ EN0_RSARHI ;
 scalar_t__ EN0_RSARLO ;
 scalar_t__ PCNET_DATAPORT ;
 int inw (scalar_t__) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static struct hw_info *get_ax88190(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    unsigned int ioaddr = dev->base_addr;
    int i, j;


    if (link->config_base != 0x03c0)
 return ((void*)0);

    outb_p(0x01, ioaddr + EN0_DCFG);
    outb_p(0x00, ioaddr + EN0_RSARLO);
    outb_p(0x04, ioaddr + EN0_RSARHI);
    outb_p(E8390_RREAD+E8390_START, ioaddr + E8390_CMD);

    for (i = 0; i < 6; i += 2) {
 j = inw(ioaddr + PCNET_DATAPORT);
 dev->dev_addr[i] = j & 0xff;
 dev->dev_addr[i+1] = j >> 8;
    }
    return ((void*)0);
}
