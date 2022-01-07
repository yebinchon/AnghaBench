
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_xdp_tx_bq {int dummy; } ;
struct veth_rq {int xdp_prog; } ;
struct veth_priv {struct veth_rq* rq; int peer; } ;
struct net_device {int dummy; } ;


 int __veth_xdp_flush (struct veth_rq*) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int rcu_access_pointer (int ) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 size_t veth_select_rxq (struct net_device*) ;
 int veth_xdp_flush_bq (struct net_device*,struct veth_xdp_tx_bq*) ;

__attribute__((used)) static void veth_xdp_flush(struct net_device *dev, struct veth_xdp_tx_bq *bq)
{
 struct veth_priv *rcv_priv, *priv = netdev_priv(dev);
 struct net_device *rcv;
 struct veth_rq *rq;

 rcu_read_lock();
 veth_xdp_flush_bq(dev, bq);
 rcv = rcu_dereference(priv->peer);
 if (unlikely(!rcv))
  goto out;

 rcv_priv = netdev_priv(rcv);
 rq = &rcv_priv->rq[veth_select_rxq(rcv)];

 if (unlikely(!rcu_access_pointer(rq->xdp_prog)))
  goto out;

 __veth_xdp_flush(rq);
out:
 rcu_read_unlock();
}
