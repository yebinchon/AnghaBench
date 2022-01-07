
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mem; } ;
struct veth_rq {TYPE_1__ xdp_rxq; int xdp_prog; int xdp_mem; } ;
struct veth_priv {struct veth_rq* rq; int _xdp_prog; } ;
struct net_device {int real_num_rx_queues; } ;


 int MEM_TYPE_PAGE_SHARED ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,int ) ;
 int veth_napi_add (struct net_device*) ;
 int xdp_rxq_info_is_reg (TYPE_1__*) ;
 int xdp_rxq_info_reg (TYPE_1__*,struct net_device*,int) ;
 int xdp_rxq_info_reg_mem_model (TYPE_1__*,int ,int *) ;
 int xdp_rxq_info_unreg (TYPE_1__*) ;

__attribute__((used)) static int veth_enable_xdp(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 int err, i;

 if (!xdp_rxq_info_is_reg(&priv->rq[0].xdp_rxq)) {
  for (i = 0; i < dev->real_num_rx_queues; i++) {
   struct veth_rq *rq = &priv->rq[i];

   err = xdp_rxq_info_reg(&rq->xdp_rxq, dev, i);
   if (err < 0)
    goto err_rxq_reg;

   err = xdp_rxq_info_reg_mem_model(&rq->xdp_rxq,
        MEM_TYPE_PAGE_SHARED,
        ((void*)0));
   if (err < 0)
    goto err_reg_mem;


   rq->xdp_mem = rq->xdp_rxq.mem;
  }

  err = veth_napi_add(dev);
  if (err)
   goto err_rxq_reg;
 }

 for (i = 0; i < dev->real_num_rx_queues; i++)
  rcu_assign_pointer(priv->rq[i].xdp_prog, priv->_xdp_prog);

 return 0;
err_reg_mem:
 xdp_rxq_info_unreg(&priv->rq[i].xdp_rxq);
err_rxq_reg:
 for (i--; i >= 0; i--)
  xdp_rxq_info_unreg(&priv->rq[i].xdp_rxq);

 return err;
}
