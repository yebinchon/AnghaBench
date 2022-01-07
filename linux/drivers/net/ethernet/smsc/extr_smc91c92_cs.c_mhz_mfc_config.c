
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smc_private {scalar_t__ manfid; scalar_t__ cardid; int base; } ;
struct pcmcia_device {int config_flags; unsigned int config_base; TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {scalar_t__ base_addr; } ;
struct TYPE_4__ {int flags; scalar_t__ start; scalar_t__ end; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int CONF_ENABLE_SPKR ;
 int ENODEV ;
 scalar_t__ MANFID_MEGAHERTZ ;
 scalar_t__ MANFID_MOTOROLA ;
 scalar_t__ PRODID_MEGAHERTZ_EM3288 ;
 int WIN_DATA_WIDTH_8 ;
 int WIN_ENABLE ;
 int WIN_MEMORY_TYPE_AM ;
 int ioremap (scalar_t__,int ) ;
 int mhz_3288_power (struct pcmcia_device*) ;
 int mhz_mfc_config_check ;
 struct smc_private* netdev_priv (struct net_device*) ;
 scalar_t__ pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_map_mem_page (struct pcmcia_device*,TYPE_1__*,unsigned int) ;
 int pcmcia_request_window (struct pcmcia_device*,TYPE_1__*,int ) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int mhz_mfc_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = netdev_priv(dev);
    unsigned int offset;
    int i;

    link->config_flags |= CONF_ENABLE_SPKR | CONF_ENABLE_IRQ |
     CONF_AUTO_SET_IO;



    if (pcmcia_loop_config(link, mhz_mfc_config_check, ((void*)0)))
     return -ENODEV;

    dev->base_addr = link->resource[0]->start;


    link->resource[2]->flags = WIN_DATA_WIDTH_8|WIN_MEMORY_TYPE_AM|WIN_ENABLE;
    link->resource[2]->start = link->resource[2]->end = 0;
    i = pcmcia_request_window(link, link->resource[2], 0);
    if (i != 0)
     return -ENODEV;

    smc->base = ioremap(link->resource[2]->start,
      resource_size(link->resource[2]));
    offset = (smc->manfid == MANFID_MOTOROLA) ? link->config_base : 0;
    i = pcmcia_map_mem_page(link, link->resource[2], offset);
    if ((i == 0) &&
 (smc->manfid == MANFID_MEGAHERTZ) &&
 (smc->cardid == PRODID_MEGAHERTZ_EM3288))
     mhz_3288_power(link);

    return 0;
}
