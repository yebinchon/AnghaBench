
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int qpn; } ;
struct mlx5i_priv {TYPE_2__ qp; } ;
struct mlx5e_priv {int state_lock; int state; int ** tisn; TYPE_1__* profile; int channels; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int (* update_rx ) (struct mlx5e_priv*) ;} ;


 int MLX5E_STATE_OPENED ;
 int clear_bit (int ,int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_fs_add_rx_underlay_qpn (struct mlx5_core_dev*,int ) ;
 int mlx5_fs_remove_rx_underlay_qpn (struct mlx5_core_dev*,int ) ;
 int mlx5e_activate_priv_channels (struct mlx5e_priv*) ;
 int mlx5e_destroy_tis (struct mlx5_core_dev*,int ) ;
 int mlx5e_open_channels (struct mlx5e_priv*,int *) ;
 int mlx5i_create_tis (struct mlx5_core_dev*,int ,int *) ;
 struct mlx5e_priv* mlx5i_epriv (struct net_device*) ;
 int mlx5i_init_underlay_qp (struct mlx5e_priv*) ;
 int mlx5i_uninit_underlay_qp (struct mlx5e_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5i_pkey_open(struct net_device *netdev)
{
 struct mlx5e_priv *epriv = mlx5i_epriv(netdev);
 struct mlx5i_priv *ipriv = epriv->ppriv;
 struct mlx5_core_dev *mdev = epriv->mdev;
 int err;

 mutex_lock(&epriv->state_lock);

 set_bit(MLX5E_STATE_OPENED, &epriv->state);

 err = mlx5i_init_underlay_qp(epriv);
 if (err) {
  mlx5_core_warn(mdev, "prepare child underlay qp state failed, %d\n", err);
  goto err_release_lock;
 }

 err = mlx5_fs_add_rx_underlay_qpn(mdev, ipriv->qp.qpn);
 if (err) {
  mlx5_core_warn(mdev, "attach child underlay qp to ft failed, %d\n", err);
  goto err_unint_underlay_qp;
 }

 err = mlx5i_create_tis(mdev, ipriv->qp.qpn, &epriv->tisn[0][0]);
 if (err) {
  mlx5_core_warn(mdev, "create child tis failed, %d\n", err);
  goto err_remove_rx_uderlay_qp;
 }

 err = mlx5e_open_channels(epriv, &epriv->channels);
 if (err) {
  mlx5_core_warn(mdev, "opening child channels failed, %d\n", err);
  goto err_clear_state_opened_flag;
 }
 epriv->profile->update_rx(epriv);
 mlx5e_activate_priv_channels(epriv);
 mutex_unlock(&epriv->state_lock);

 return 0;

err_clear_state_opened_flag:
 mlx5e_destroy_tis(mdev, epriv->tisn[0][0]);
err_remove_rx_uderlay_qp:
 mlx5_fs_remove_rx_underlay_qpn(mdev, ipriv->qp.qpn);
err_unint_underlay_qp:
 mlx5i_uninit_underlay_qp(epriv);
err_release_lock:
 clear_bit(MLX5E_STATE_OPENED, &epriv->state);
 mutex_unlock(&epriv->state_lock);
 return err;
}
