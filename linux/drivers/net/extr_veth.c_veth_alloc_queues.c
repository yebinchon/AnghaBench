
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct veth_priv {TYPE_2__* rq; } ;
struct net_device {int num_rx_queues; } ;
struct TYPE_3__ {int syncp; } ;
struct TYPE_4__ {TYPE_1__ stats; struct net_device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* kcalloc (int,int,int ) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int veth_alloc_queues(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 int i;

 priv->rq = kcalloc(dev->num_rx_queues, sizeof(*priv->rq), GFP_KERNEL);
 if (!priv->rq)
  return -ENOMEM;

 for (i = 0; i < dev->num_rx_queues; i++) {
  priv->rq[i].dev = dev;
  u64_stats_init(&priv->rq[i].stats.syncp);
 }

 return 0;
}
