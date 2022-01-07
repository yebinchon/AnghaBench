
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {int state_lock; int mdev; struct mlx5e_rep_priv* ppriv; } ;
struct mlx5_eswitch_rep {int vport; } ;


 int MLX5_VPORT_ADMIN_STATE_DOWN ;
 int MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ;
 int mlx5_modify_vport_admin_state (int ,int ,int ,int,int ) ;
 int mlx5e_close_locked (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_rep_close(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep = rpriv->rep;
 int ret;

 mutex_lock(&priv->state_lock);
 mlx5_modify_vport_admin_state(priv->mdev,
          MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
          rep->vport, 1,
          MLX5_VPORT_ADMIN_STATE_DOWN);
 ret = mlx5e_close_locked(dev);
 mutex_unlock(&priv->state_lock);
 return ret;
}
