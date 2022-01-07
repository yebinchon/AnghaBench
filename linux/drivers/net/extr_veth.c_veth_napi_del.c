
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int rx_notify_masked; int xdp_ring; int xdp_napi; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;


 int napi_disable (int *) ;
 int napi_hash_del (int *) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int ptr_ring_cleanup (int *,int ) ;
 int synchronize_net () ;
 int veth_ptr_free ;

__attribute__((used)) static void veth_napi_del(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 int i;

 for (i = 0; i < dev->real_num_rx_queues; i++) {
  struct veth_rq *rq = &priv->rq[i];

  napi_disable(&rq->xdp_napi);
  napi_hash_del(&rq->xdp_napi);
 }
 synchronize_net();

 for (i = 0; i < dev->real_num_rx_queues; i++) {
  struct veth_rq *rq = &priv->rq[i];

  netif_napi_del(&rq->xdp_napi);
  rq->rx_notify_masked = 0;
  ptr_ring_cleanup(&rq->xdp_ring, veth_ptr_free);
 }
}
