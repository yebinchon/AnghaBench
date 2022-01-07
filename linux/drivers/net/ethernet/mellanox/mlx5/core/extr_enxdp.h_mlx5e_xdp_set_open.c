
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int state; } ;


 int MLX5E_STATE_XDP_OPEN ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void mlx5e_xdp_set_open(struct mlx5e_priv *priv)
{
 set_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
}
