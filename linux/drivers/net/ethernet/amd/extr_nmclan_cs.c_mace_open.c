
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {unsigned int base_addr; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ mace_private ;


 int ENODEV ;
 int MACEBANK (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int nmclan_reset (struct net_device*) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;

__attribute__((used)) static int mace_open(struct net_device *dev)
{
  unsigned int ioaddr = dev->base_addr;
  mace_private *lp = netdev_priv(dev);
  struct pcmcia_device *link = lp->p_dev;

  if (!pcmcia_dev_present(link))
    return -ENODEV;

  link->open++;

  MACEBANK(0);

  netif_start_queue(dev);
  nmclan_reset(dev);

  return 0;
}
