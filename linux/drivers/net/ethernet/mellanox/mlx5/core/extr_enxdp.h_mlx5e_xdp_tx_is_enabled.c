
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int state; } ;


 int MLX5E_STATE_XDP_TX_ENABLED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool mlx5e_xdp_tx_is_enabled(struct mlx5e_priv *priv)
{
 return test_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
}
