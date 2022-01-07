
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_regs {int rdp; } ;
struct lance_private {struct lance_regs* ll; } ;


 int lance_reset (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void lance_tx_timeout(struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;

 netdev_err(dev, "transmit timed out, status %04x, reset\n", ll->rdp);
 lance_reset(dev);
 netif_wake_queue(dev);
}
