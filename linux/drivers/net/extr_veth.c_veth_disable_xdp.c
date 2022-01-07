
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem; } ;
struct veth_rq {TYPE_1__ xdp_rxq; int xdp_mem; int xdp_prog; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,int *) ;
 int veth_napi_del (struct net_device*) ;
 int xdp_rxq_info_unreg (TYPE_1__*) ;

__attribute__((used)) static void veth_disable_xdp(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 int i;

 for (i = 0; i < dev->real_num_rx_queues; i++)
  rcu_assign_pointer(priv->rq[i].xdp_prog, ((void*)0));
 veth_napi_del(dev);
 for (i = 0; i < dev->real_num_rx_queues; i++) {
  struct veth_rq *rq = &priv->rq[i];

  rq->xdp_rxq.mem = rq->xdp_mem;
  xdp_rxq_info_unreg(&rq->xdp_rxq);
 }
}
