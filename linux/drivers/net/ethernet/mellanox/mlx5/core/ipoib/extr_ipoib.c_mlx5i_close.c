
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int state_lock; int channels; int netdev; int state; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_STATE_OPENED ;
 int clear_bit (int ,int *) ;
 int mlx5_fs_remove_rx_underlay_qpn (struct mlx5_core_dev*,int ) ;
 int mlx5e_close_channels (int *) ;
 int mlx5e_deactivate_priv_channels (struct mlx5e_priv*) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_uninit_underlay_qp (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mlx5i_close(struct net_device *netdev)
{
 struct mlx5e_priv *epriv = mlx5i_epriv(netdev);
 struct mlx5i_priv *ipriv = epriv->ppriv;
 struct mlx5_core_dev *mdev = epriv->mdev;




 mutex_lock(&epriv->state_lock);

 if (!test_bit(MLX5E_STATE_OPENED, &epriv->state))
  goto unlock;

 clear_bit(MLX5E_STATE_OPENED, &epriv->state);

 netif_carrier_off(epriv->netdev);
 mlx5_fs_remove_rx_underlay_qpn(mdev, ipriv->qp.qpn);
 mlx5e_deactivate_priv_channels(epriv);
 mlx5e_close_channels(&epriv->channels);
 mlx5i_uninit_underlay_qp(epriv);
unlock:
 mutex_unlock(&epriv->state_lock);
 return 0;
}
