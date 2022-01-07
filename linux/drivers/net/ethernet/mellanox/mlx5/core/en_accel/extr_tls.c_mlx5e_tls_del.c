
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tls_context {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
typedef enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;
struct TYPE_4__ {int handle; } ;
struct TYPE_3__ {int swid; } ;


 int TLS_OFFLOAD_CTX_DIR_TX ;
 int mlx5_accel_tls_del_flow (int ,unsigned int,int) ;
 TYPE_2__* mlx5e_get_tls_rx_context (struct tls_context*) ;
 TYPE_1__* mlx5e_get_tls_tx_context (struct tls_context*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static void mlx5e_tls_del(struct net_device *netdev,
     struct tls_context *tls_ctx,
     enum tls_offload_ctx_dir direction)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 unsigned int handle;

 handle = ntohl((direction == TLS_OFFLOAD_CTX_DIR_TX) ?
         mlx5e_get_tls_tx_context(tls_ctx)->swid :
         mlx5e_get_tls_rx_context(tls_ctx)->handle);

 mlx5_accel_tls_del_flow(priv->mdev, handle,
    direction == TLS_OFFLOAD_CTX_DIR_TX);
}
