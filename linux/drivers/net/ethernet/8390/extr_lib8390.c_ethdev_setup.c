
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int msg_enable; int page_lock; } ;


 int NETIF_MSG_DRV ;
 int ether_setup (struct net_device*) ;
 int msg_enable ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int pr_info (char*,int ) ;
 int spin_lock_init (int *) ;
 int version ;
 int version_printed ;

__attribute__((used)) static void ethdev_setup(struct net_device *dev)
{
 struct ei_device *ei_local = netdev_priv(dev);

 if ((msg_enable & NETIF_MSG_DRV) && (version_printed++ == 0))
  pr_info("%s", version);

 ether_setup(dev);

 spin_lock_init(&ei_local->page_lock);

 ei_local->msg_enable = msg_enable;
}
