
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {scalar_t__ expires; } ;
struct sbni_in_stats {int dummy; } ;
struct net_local {int lock; struct net_device* watchdog_dev; int in_stats; int state; struct net_device* second; struct timer_list watchdog; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int base_addr; scalar_t__ irq; int flags; int stats; int name; } ;


 int EAGAIN ;
 int FL_SECONDARY ;
 int IFF_UP ;
 int IRQF_SHARED ;
 int SBNI_MAX_NUM_CARDS ;
 scalar_t__ SBNI_TIMEOUT ;
 int add_timer (struct timer_list*) ;
 int card_start (struct net_device*) ;
 scalar_t__ jiffies ;
 int memset (int *,int ,int) ;
 int netdev_err (struct net_device*,char*,scalar_t__) ;
 int netdev_notice (struct net_device*,char*,int ) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (scalar_t__,int ,int ,int ,struct net_device*) ;
 struct net_device** sbni_cards ;
 int sbni_interrupt ;
 int sbni_watchdog ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_setup (struct timer_list*,int ,int ) ;

__attribute__((used)) static int
sbni_open( struct net_device *dev )
{
 struct net_local *nl = netdev_priv(dev);
 struct timer_list *w = &nl->watchdog;






 if( dev->base_addr < 0x400 ) {
  struct net_device **p = sbni_cards;
  for( ; *p && p < sbni_cards + SBNI_MAX_NUM_CARDS; ++p )
   if( (*p)->irq == dev->irq &&
       ((*p)->base_addr == dev->base_addr + 4 ||
        (*p)->base_addr == dev->base_addr - 4) &&
       (*p)->flags & IFF_UP ) {

    ((struct net_local *) (netdev_priv(*p)))
     ->second = dev;
    netdev_notice(dev, "using shared irq with %s\n",
           (*p)->name);
    nl->state |= FL_SECONDARY;
    goto handler_attached;
   }
 }

 if( request_irq(dev->irq, sbni_interrupt, IRQF_SHARED, dev->name, dev) ) {
  netdev_err(dev, "unable to get IRQ %d\n", dev->irq);
  return -EAGAIN;
 }

handler_attached:

 spin_lock( &nl->lock );
 memset( &dev->stats, 0, sizeof(struct net_device_stats) );
 memset( &nl->in_stats, 0, sizeof(struct sbni_in_stats) );

 card_start( dev );

 netif_start_queue( dev );


 nl->watchdog_dev = dev;
 timer_setup(w, sbni_watchdog, 0);
 w->expires = jiffies + SBNI_TIMEOUT;
 add_timer( w );

 spin_unlock( &nl->lock );
 return 0;
}
