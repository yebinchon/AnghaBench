
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_ktls_offload_context_tx {int tisn; } ;


 int MLX5E_TLS_PROGRESS_PARAMS_AUTH_STATE_NO_OFFLOAD ;
 int MLX5E_TLS_PROGRESS_PARAMS_RECORD_TRACKER_STATE_START ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int auth_state ;
 int record_tracker_state ;
 int tisn ;
 int tls_progress_params ;

__attribute__((used)) static void
fill_progress_params_ctx(void *ctx, struct mlx5e_ktls_offload_context_tx *priv_tx)
{
 MLX5_SET(tls_progress_params, ctx, tisn, priv_tx->tisn);
 MLX5_SET(tls_progress_params, ctx, record_tracker_state,
   MLX5E_TLS_PROGRESS_PARAMS_RECORD_TRACKER_STATE_START);
 MLX5_SET(tls_progress_params, ctx, auth_state,
   MLX5E_TLS_PROGRESS_PARAMS_AUTH_STATE_NO_OFFLOAD);
}
