
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmimux_priv {int stats64; struct net_device* real_dev; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int dev_put (struct net_device*) ;
 int free_percpu (int ) ;
 struct qmimux_priv* netdev_priv (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void qmimux_unregister_device(struct net_device *dev,
         struct list_head *head)
{
 struct qmimux_priv *priv = netdev_priv(dev);
 struct net_device *real_dev = priv->real_dev;

 free_percpu(priv->stats64);
 netdev_upper_dev_unlink(real_dev, dev);
 unregister_netdevice_queue(dev, head);


 dev_put(real_dev);
}
