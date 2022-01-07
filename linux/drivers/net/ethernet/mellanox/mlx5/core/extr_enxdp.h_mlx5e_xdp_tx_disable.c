
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int state; } ;


 int MLX5E_STATE_XDP_TX_ENABLED ;
 int clear_bit (int ,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static inline void mlx5e_xdp_tx_disable(struct mlx5e_priv *priv)
{
 clear_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);

 synchronize_rcu();
}
