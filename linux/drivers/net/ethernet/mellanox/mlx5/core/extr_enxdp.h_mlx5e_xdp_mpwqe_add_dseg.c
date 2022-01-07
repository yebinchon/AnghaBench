
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5e_xdpsq_stats {int inlnw; } ;
struct mlx5e_xdp_mpwqe {int ds_count; scalar_t__ inline_on; int pkt_count; scalar_t__ wqe; } ;
struct mlx5e_xdpsq {int mkey_be; struct mlx5e_xdp_mpwqe mpwqe; } ;
struct mlx5e_xdp_xmit_data {int len; int dma_addr; int data; } ;
struct mlx5_wqe_inline_seg {int data; void* byte_count; } ;
struct mlx5_wqe_data_seg {int lkey; void* byte_count; int addr; } ;


 int DIV_ROUND_UP (int,int ) ;
 int MLX5E_XDP_INLINE_WQE_SZ_THRSD ;
 int MLX5_INLINE_SEG ;
 int MLX5_SEND_WQE_DS ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void
mlx5e_xdp_mpwqe_add_dseg(struct mlx5e_xdpsq *sq,
    struct mlx5e_xdp_xmit_data *xdptxd,
    struct mlx5e_xdpsq_stats *stats)
{
 struct mlx5e_xdp_mpwqe *session = &sq->mpwqe;
 struct mlx5_wqe_data_seg *dseg =
  (struct mlx5_wqe_data_seg *)session->wqe + session->ds_count;
 u32 dma_len = xdptxd->len;

 session->pkt_count++;

 if (session->inline_on && dma_len <= MLX5E_XDP_INLINE_WQE_SZ_THRSD) {
  struct mlx5_wqe_inline_seg *inline_dseg =
   (struct mlx5_wqe_inline_seg *)dseg;
  u16 ds_len = sizeof(*inline_dseg) + dma_len;
  u16 ds_cnt = DIV_ROUND_UP(ds_len, MLX5_SEND_WQE_DS);

  inline_dseg->byte_count = cpu_to_be32(dma_len | MLX5_INLINE_SEG);
  memcpy(inline_dseg->data, xdptxd->data, dma_len);

  session->ds_count += ds_cnt;
  stats->inlnw++;
  return;
 }

 dseg->addr = cpu_to_be64(xdptxd->dma_addr);
 dseg->byte_count = cpu_to_be32(dma_len);
 dseg->lkey = sq->mkey_be;
 session->ds_count++;
}
