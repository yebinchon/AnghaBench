
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct gtp_dev {int list; } ;


 int gtp_hashtable_free (struct gtp_dev*) ;
 int list_del_rcu (int *) ;
 struct gtp_dev* netdev_priv (struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void gtp_dellink(struct net_device *dev, struct list_head *head)
{
 struct gtp_dev *gtp = netdev_priv(dev);

 gtp_hashtable_free(gtp);
 list_del_rcu(&gtp->list);
 unregister_netdevice_queue(dev, head);
}
