
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ktls_offload_context_tx {int ctx_post_pending; } ;



__attribute__((used)) static bool
mlx5e_ktls_tx_offload_test_and_clear_pending(struct mlx5e_ktls_offload_context_tx *priv_tx)
{
 bool ret = priv_tx->ctx_post_pending;

 priv_tx->ctx_post_pending = 0;

 return ret;
}
