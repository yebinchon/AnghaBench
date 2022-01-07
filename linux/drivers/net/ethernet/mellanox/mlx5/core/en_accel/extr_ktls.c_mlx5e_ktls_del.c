
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
struct mlx5e_ktls_offload_context_tx {int tisn; int key_id; } ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;


 int kvfree (struct mlx5e_ktls_offload_context_tx*) ;
 int mlx5_ktls_destroy_key (int ,int ) ;
 int mlx5e_destroy_tis (int ,int ) ;
 struct mlx5e_ktls_offload_context_tx* mlx5e_get_ktls_tx_priv_ctx (struct tls_context*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_ktls_del(struct net_device *netdev,
      struct tls_context *tls_ctx,
      enum tls_offload_ctx_dir direction)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5e_ktls_offload_context_tx *tx_priv =
  mlx5e_get_ktls_tx_priv_ctx(tls_ctx);

 mlx5_ktls_destroy_key(priv->mdev, tx_priv->key_id);
 mlx5e_destroy_tis(priv->mdev, tx_priv->tisn);
 kvfree(tx_priv);
}
