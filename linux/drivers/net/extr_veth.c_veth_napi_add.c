
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq {int xdp_ring; int xdp_napi; } ;
struct veth_priv {struct veth_rq* rq; } ;
struct net_device {int real_num_rx_queues; } ;


 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int VETH_RING_SIZE ;
 int napi_enable (int *) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int ptr_ring_cleanup (int *,int ) ;
 int ptr_ring_init (int *,int ,int ) ;
 int veth_poll ;
 int veth_ptr_free ;

__attribute__((used)) static int veth_napi_add(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 int err, i;

 for (i = 0; i < dev->real_num_rx_queues; i++) {
  struct veth_rq *rq = &priv->rq[i];

  err = ptr_ring_init(&rq->xdp_ring, VETH_RING_SIZE, GFP_KERNEL);
  if (err)
   goto err_xdp_ring;
 }

 for (i = 0; i < dev->real_num_rx_queues; i++) {
  struct veth_rq *rq = &priv->rq[i];

  netif_napi_add(dev, &rq->xdp_napi, veth_poll, NAPI_POLL_WEIGHT);
  napi_enable(&rq->xdp_napi);
 }

 return 0;
err_xdp_ring:
 for (i--; i >= 0; i--)
  ptr_ring_cleanup(&priv->rq[i].xdp_ring, veth_ptr_free);

 return err;
}
