
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_local {int state; int lock; int watchdog; TYPE_1__* second; struct net_device* link; } ;
struct net_device {int irq; scalar_t__ base_addr; } ;
struct TYPE_2__ {int flags; int name; } ;


 scalar_t__ CSR0 ;
 int EBUSY ;
 int FL_SECONDARY ;
 int FL_SLAVE ;
 int IFF_UP ;
 int del_timer (int *) ;
 int drop_xmit_queue (struct net_device*) ;
 int emancipate (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int netdev_notice (struct net_device*,char*,int ) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
sbni_close( struct net_device *dev )
{
 struct net_local *nl = netdev_priv(dev);

 if( nl->second && nl->second->flags & IFF_UP ) {
  netdev_notice(dev, "Secondary channel (%s) is active!\n",
         nl->second->name);
  return -EBUSY;
 }
 spin_lock( &nl->lock );

 nl->second = ((void*)0);
 drop_xmit_queue( dev );
 netif_stop_queue( dev );

 del_timer( &nl->watchdog );

 outb( 0, dev->base_addr + CSR0 );

 if( !(nl->state & FL_SECONDARY) )
  free_irq( dev->irq, dev );
 nl->state &= FL_SECONDARY;

 spin_unlock( &nl->lock );
 return 0;
}
