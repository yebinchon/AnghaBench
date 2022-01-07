
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int channels; int netdev; } ;


 int mlx5e_deactivate_channels (int *) ;
 scalar_t__ mlx5e_is_vport_rep (struct mlx5e_priv*) ;
 int mlx5e_redirect_rqts_to_drop (struct mlx5e_priv*) ;
 int mlx5e_remove_sqs_fwd_rules (struct mlx5e_priv*) ;
 int mlx5e_xdp_tx_disable (struct mlx5e_priv*) ;
 int mlx5e_xsk_redirect_rqts_to_drop (struct mlx5e_priv*,int *) ;
 int netif_tx_disable (int ) ;
 int netif_tx_stop_all_queues (int ) ;

void mlx5e_deactivate_priv_channels(struct mlx5e_priv *priv)
{
 mlx5e_xsk_redirect_rqts_to_drop(priv, &priv->channels);

 mlx5e_redirect_rqts_to_drop(priv);

 if (mlx5e_is_vport_rep(priv))
  mlx5e_remove_sqs_fwd_rules(priv);




 netif_tx_stop_all_queues(priv->netdev);
 netif_tx_disable(priv->netdev);
 mlx5e_xdp_tx_disable(priv);
 mlx5e_deactivate_channels(&priv->channels);
}
