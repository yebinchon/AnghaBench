
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; int stats_bitmap; scalar_t__ rx_skb_size; int port; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; scalar_t__ autoneg; } ;
struct TYPE_2__ {void* rx_ppp; void* tx_ppp; void* rx_pause; void* tx_pause; } ;


 int EINVAL ;
 scalar_t__ ETH_FCS_LEN ;
 int en_err (struct mlx4_en_priv*,char*,int) ;
 int mlx4_SET_PORT_general (int ,int ,scalar_t__,void*,void*,void*,void*) ;
 int mlx4_en_update_pfc_stats_bitmap (int ,int *,void*,void*,void*,void*) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_pauseparam(struct net_device *dev,
    struct ethtool_pauseparam *pause)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 u8 tx_pause, tx_ppp, rx_pause, rx_ppp;
 int err;

 if (pause->autoneg)
  return -EINVAL;

 tx_pause = !!(pause->tx_pause);
 rx_pause = !!(pause->rx_pause);
 rx_ppp = (tx_pause || rx_pause) ? 0 : priv->prof->rx_ppp;
 tx_ppp = (tx_pause || rx_pause) ? 0 : priv->prof->tx_ppp;

 err = mlx4_SET_PORT_general(mdev->dev, priv->port,
        priv->rx_skb_size + ETH_FCS_LEN,
        tx_pause, tx_ppp, rx_pause, rx_ppp);
 if (err) {
  en_err(priv, "Failed setting pause params, err = %d\n", err);
  return err;
 }

 mlx4_en_update_pfc_stats_bitmap(mdev->dev, &priv->stats_bitmap,
     rx_ppp, rx_pause, tx_ppp, tx_pause);

 priv->prof->tx_pause = tx_pause;
 priv->prof->rx_pause = rx_pause;
 priv->prof->tx_ppp = tx_ppp;
 priv->prof->rx_ppp = rx_ppp;

 return err;
}
