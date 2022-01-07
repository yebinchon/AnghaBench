
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_wqe_umr_ctrl_seg {int flags; int mkey_mask; int xlt_octowords; } ;
struct mlx5_wqe_ctrl_seg {int imm; int fm_ce_se; int qpn_ds; } ;
struct mlx5e_umr_wqe {struct mlx5_wqe_umr_ctrl_seg uctrl; struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5e_rq {int mkey_be; } ;
struct mlx5e_icosq {int sqn; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int MLX5E_UMR_WQE_INLINE_SZ ;
 int MLX5_MKEY_MASK_FREE ;
 int MLX5_MPWRQ_PAGES_PER_WQE ;
 int MLX5_MTT_OCTW (int ) ;
 int MLX5_SEND_WQE_DS ;
 int MLX5_UMR_INLINE ;
 int MLX5_UMR_TRANSLATION_OFFSET_EN ;
 int MLX5_WQE_CTRL_CQ_UPDATE ;
 int MLX5_WQE_CTRL_QPN_SHIFT ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static inline void mlx5e_build_umr_wqe(struct mlx5e_rq *rq,
           struct mlx5e_icosq *sq,
           struct mlx5e_umr_wqe *wqe)
{
 struct mlx5_wqe_ctrl_seg *cseg = &wqe->ctrl;
 struct mlx5_wqe_umr_ctrl_seg *ucseg = &wqe->uctrl;
 u8 ds_cnt = DIV_ROUND_UP(MLX5E_UMR_WQE_INLINE_SZ, MLX5_SEND_WQE_DS);

 cseg->qpn_ds = cpu_to_be32((sq->sqn << MLX5_WQE_CTRL_QPN_SHIFT) |
          ds_cnt);
 cseg->fm_ce_se = MLX5_WQE_CTRL_CQ_UPDATE;
 cseg->imm = rq->mkey_be;

 ucseg->flags = MLX5_UMR_TRANSLATION_OFFSET_EN | MLX5_UMR_INLINE;
 ucseg->xlt_octowords =
  cpu_to_be16(MLX5_MTT_OCTW(MLX5_MPWRQ_PAGES_PER_WQE));
 ucseg->mkey_mask = cpu_to_be64(MLX5_MKEY_MASK_FREE);
}
