
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int trust_state; } ;
struct mlx5e_priv {TYPE_1__ dcbx_dp; int mdev; } ;


 int mlx5_set_trust_state (int ,int ) ;
 int mlx5e_trust_update_sq_inline_mode (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5e_set_trust_state(struct mlx5e_priv *priv, u8 trust_state)
{
 int err;

 err = mlx5_set_trust_state(priv->mdev, trust_state);
 if (err)
  return err;
 priv->dcbx_dp.trust_state = trust_state;
 mlx5e_trust_update_sq_inline_mode(priv);

 return err;
}
