
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_txqsq {int pc; int sqn; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_ktls_offload_context_tx {int dummy; } ;


 scalar_t__ MLX5E_KTLS_PROGRESS_WQEBBS ;
 int MLX5E_KTLS_PROGRESS_WQE_SZ ;
 int build_progress_params (struct mlx5e_tx_wqe*,int ,int ,struct mlx5e_ktls_offload_context_tx*,int) ;
 struct mlx5e_tx_wqe* mlx5e_sq_fetch_wqe (struct mlx5e_txqsq*,int ,int *) ;
 int tx_fill_wi (struct mlx5e_txqsq*,int ,scalar_t__,int ,int *) ;

__attribute__((used)) static void
post_progress_params(struct mlx5e_txqsq *sq,
       struct mlx5e_ktls_offload_context_tx *priv_tx,
       bool fence)
{
 struct mlx5e_tx_wqe *wqe;
 u16 pi;

 wqe = mlx5e_sq_fetch_wqe(sq, MLX5E_KTLS_PROGRESS_WQE_SZ, &pi);
 build_progress_params(wqe, sq->pc, sq->sqn, priv_tx, fence);
 tx_fill_wi(sq, pi, MLX5E_KTLS_PROGRESS_WQEBBS, 0, ((void*)0));
 sq->pc += MLX5E_KTLS_PROGRESS_WQEBBS;
}
