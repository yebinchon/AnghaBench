
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int state_lock; int ** tisn; int channels; int netdev; int state; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_STATE_OPENED ;
 int clear_bit (int ,int *) ;
 int mlx5_fs_remove_rx_underlay_qpn (struct mlx5_core_dev*,int ) ;
 int mlx5e_close_channels (int *) ;
 int mlx5e_deactivate_priv_channels (struct mlx5e_priv*) ;
 int mlx5e_destroy_tis (struct mlx5_core_dev*,int ) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_uninit_underlay_qp (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mlx5i_pkey_close(struct net_device *netdev)
{
 struct mlx5e_priv *priv = mlx5i_epriv(netdev);
 struct mlx5i_priv *ipriv = priv->ppriv;
 struct mlx5_core_dev *mdev = priv->mdev;

 mutex_lock(&priv->state_lock);

 if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
  goto unlock;

 clear_bit(MLX5E_STATE_OPENED, &priv->state);

 netif_carrier_off(priv->netdev);
 mlx5_fs_remove_rx_underlay_qpn(mdev, ipriv->qp.qpn);
 mlx5i_uninit_underlay_qp(priv);
 mlx5e_deactivate_priv_channels(priv);
 mlx5e_close_channels(&priv->channels);
 mlx5e_destroy_tis(mdev, priv->tisn[0][0]);
unlock:
 mutex_unlock(&priv->state_lock);
 return 0;
}
