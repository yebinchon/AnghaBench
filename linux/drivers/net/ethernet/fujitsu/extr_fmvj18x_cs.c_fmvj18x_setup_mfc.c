
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; } ;
struct local_info {int * base; } ;
struct TYPE_4__ {int flags; scalar_t__ start; scalar_t__ end; } ;


 int WIN_DATA_WIDTH_8 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_AM ;
 int * ioremap (scalar_t__,int ) ;
 int iounmap (int *) ;
 int netdev_notice (struct net_device*,char*) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int pcmcia_map_mem_page (struct pcmcia_device*,TYPE_1__*,int ) ;
 int pcmcia_request_window (struct pcmcia_device*,TYPE_1__*,int ) ;
 int resource_size (TYPE_1__*) ;
 int writeb (int,int *) ;

__attribute__((used)) static int fmvj18x_setup_mfc(struct pcmcia_device *link)
{
    int i;
    struct net_device *dev = link->priv;
    unsigned int ioaddr;
    struct local_info *lp = netdev_priv(dev);


    link->resource[3]->flags = WIN_DATA_WIDTH_8|WIN_MEMORY_TYPE_AM|WIN_ENABLE;
    link->resource[3]->start = link->resource[3]->end = 0;
    i = pcmcia_request_window(link, link->resource[3], 0);
    if (i != 0)
 return -1;

    lp->base = ioremap(link->resource[3]->start,
         resource_size(link->resource[3]));
    if (lp->base == ((void*)0)) {
 netdev_notice(dev, "ioremap failed\n");
 return -1;
    }

    i = pcmcia_map_mem_page(link, link->resource[3], 0);
    if (i != 0) {
 iounmap(lp->base);
 lp->base = ((void*)0);
 return -1;
    }

    ioaddr = dev->base_addr;
    writeb(0x47, lp->base+0x800);
    writeb(0x0, lp->base+0x802);

    writeb(ioaddr & 0xff, lp->base+0x80a);
    writeb((ioaddr >> 8) & 0xff, lp->base+0x80c);

    writeb(0x45, lp->base+0x820);
    writeb(0x8, lp->base+0x822);

    return 0;

}
