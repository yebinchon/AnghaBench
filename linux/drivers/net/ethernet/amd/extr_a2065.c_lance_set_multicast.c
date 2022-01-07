
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {scalar_t__ tx_old; scalar_t__ tx_new; int multicast_timer; struct lance_regs* ll; struct lance_init_block* init_block; } ;
struct lance_init_block {int mode; } ;


 int IFF_PROMISC ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int LE_MO_PROM ;
 int init_restart_lance (struct lance_private*) ;
 scalar_t__ jiffies ;
 int lance_init_ring (struct net_device*) ;
 int lance_load_multicast (struct net_device*) ;
 int load_csrs (struct lance_private*) ;
 int mod_timer (int *,scalar_t__) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void lance_set_multicast(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_init_block *ib = lp->init_block;
 volatile struct lance_regs *ll = lp->ll;

 if (!netif_running(dev))
  return;

 if (lp->tx_old != lp->tx_new) {
  mod_timer(&lp->multicast_timer, jiffies + 4);
  netif_wake_queue(dev);
  return;
 }

 netif_stop_queue(dev);

 ll->rap = LE_CSR0;
 ll->rdp = LE_C0_STOP;
 lance_init_ring(dev);

 if (dev->flags & IFF_PROMISC) {
  ib->mode |= LE_MO_PROM;
 } else {
  ib->mode &= ~LE_MO_PROM;
  lance_load_multicast(dev);
 }
 load_csrs(lp);
 init_restart_lance(lp);
 netif_wake_queue(dev);
}
