
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int * prod_id; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 scalar_t__ cvt_ascii_address (struct net_device*,int ) ;
 int pcmcia_get_mac_from_cis (struct pcmcia_device*,struct net_device*) ;

__attribute__((used)) static int smc_setup(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;


    if (!pcmcia_get_mac_from_cis(link, dev))
     return 0;


    if (link->prod_id[2]) {
     if (cvt_ascii_address(dev, link->prod_id[2]) == 0)
      return 0;
    }
    return -1;
}
