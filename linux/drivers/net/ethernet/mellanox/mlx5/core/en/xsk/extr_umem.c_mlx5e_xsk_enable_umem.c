
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct mlx5e_priv {int state_lock; } ;


 int mlx5e_xsk_enable_locked (struct mlx5e_priv*,struct xdp_umem*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx5e_xsk_enable_umem(struct mlx5e_priv *priv, struct xdp_umem *umem,
     u16 ix)
{
 int err;

 mutex_lock(&priv->state_lock);
 err = mlx5e_xsk_enable_locked(priv, umem, ix);
 mutex_unlock(&priv->state_lock);

 return err;
}
