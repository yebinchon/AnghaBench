
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {int config_flags; TYPE_1__** resource; struct net_device* priv; } ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int start; } ;


 int CONF_AUTO_SET_IO ;
 int CONF_ENABLE_IRQ ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int smc_configcheck ;

__attribute__((used)) static int smc_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    int i;

    link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

    i = pcmcia_loop_config(link, smc_configcheck, ((void*)0));
    if (!i)
     dev->base_addr = link->resource[0]->start;

    return i;
}
