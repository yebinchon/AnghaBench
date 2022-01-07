
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int socket; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ mace_private ;


 int netdev_notice (struct net_device*,char*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int pcmcia_reset_card (int ) ;
 int pr_cont (char*) ;

__attribute__((used)) static void mace_tx_timeout(struct net_device *dev)
{
  mace_private *lp = netdev_priv(dev);
  struct pcmcia_device *link = lp->p_dev;

  netdev_notice(dev, "transmit timed out -- ");




  pr_cont("NOT resetting card\n");

  netif_trans_update(dev);
  netif_wake_queue(dev);
}
