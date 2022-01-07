
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct arcnet_local {int timer; int lock; struct net_device* dev; } ;


 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev (int,char const*,int ,int ) ;
 int arcdev_setup ;
 int arcnet_timer ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct net_device *alloc_arcdev(const char *name)
{
 struct net_device *dev;

 dev = alloc_netdev(sizeof(struct arcnet_local),
      name && *name ? name : "arc%d", NET_NAME_UNKNOWN,
      arcdev_setup);
 if (dev) {
  struct arcnet_local *lp = netdev_priv(dev);

  lp->dev = dev;
  spin_lock_init(&lp->lock);
  timer_setup(&lp->timer, arcnet_timer, 0);
 }

 return dev;
}
