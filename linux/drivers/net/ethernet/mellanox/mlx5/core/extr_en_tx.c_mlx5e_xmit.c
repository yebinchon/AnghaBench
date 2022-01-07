
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {int dummy; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_priv {struct mlx5e_txqsq** txq2sq; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 struct sk_buff* mlx5e_accel_handle_tx (struct sk_buff*,struct mlx5e_txqsq*,struct net_device*,struct mlx5e_tx_wqe**,int *) ;
 struct mlx5e_tx_wqe* mlx5e_sq_fetch_wqe (struct mlx5e_txqsq*,int,int *) ;
 int mlx5e_sq_xmit (struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe*,int ,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int netdev_xmit_more () ;
 size_t skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

netdev_tx_t mlx5e_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_tx_wqe *wqe;
 struct mlx5e_txqsq *sq;
 u16 pi;

 sq = priv->txq2sq[skb_get_queue_mapping(skb)];
 wqe = mlx5e_sq_fetch_wqe(sq, sizeof(*wqe), &pi);


 skb = mlx5e_accel_handle_tx(skb, sq, dev, &wqe, &pi);
 if (unlikely(!skb))
  return NETDEV_TX_OK;

 return mlx5e_sq_xmit(sq, skb, wqe, pi, netdev_xmit_more());
}
