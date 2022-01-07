
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {int rq; } ;
struct net_device {int dummy; } ;


 int kfree (int ) ;
 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void veth_free_queues(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);

 kfree(priv->rq);
}
