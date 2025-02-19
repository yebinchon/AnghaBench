
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct mlx5e_xdpsq_stats {int xmit; int err; } ;
struct TYPE_4__ {int xdpi_fifo; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_xdpsq {int pc; scalar_t__ hw_mtu; scalar_t__ min_inline_mode; TYPE_2__ db; struct mlx5_wqe_ctrl_seg* doorbell_cseg; struct mlx5e_xdpsq_stats* stats; struct mlx5_wq_cyc wq; } ;
struct mlx5e_xdp_xmit_data {scalar_t__ len; int data; int dma_addr; } ;
struct mlx5e_xdp_info {int dummy; } ;
struct TYPE_3__ {int sz; int start; } ;
struct mlx5_wqe_eth_seg {TYPE_1__ inline_hdr; } ;
struct mlx5_wqe_ctrl_seg {void* opmod_idx_opcode; scalar_t__ fm_ce_se; } ;
struct mlx5e_tx_wqe {struct mlx5_wqe_data_seg* data; struct mlx5_wqe_eth_seg eth; struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5_wqe_data_seg {void* byte_count; int addr; } ;
typedef int dma_addr_t ;


 scalar_t__ MLX5E_XDP_MIN_INLINE ;
 scalar_t__ MLX5_INLINE_MODE_NONE ;
 int MLX5_OPCODE_SEND ;
 int cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int) ;
 struct mlx5e_tx_wqe* mlx5_wq_cyc_get_wqe (struct mlx5_wq_cyc*,int ) ;
 int mlx5e_xdpi_fifo_push (int *,struct mlx5e_xdp_info*) ;
 int mlx5e_xmit_xdp_frame_check (struct mlx5e_xdpsq*) ;
 int prefetchw (struct mlx5e_tx_wqe*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool mlx5e_xmit_xdp_frame(struct mlx5e_xdpsq *sq,
     struct mlx5e_xdp_xmit_data *xdptxd,
     struct mlx5e_xdp_info *xdpi,
     int check_result)
{
 struct mlx5_wq_cyc *wq = &sq->wq;
 u16 pi = mlx5_wq_cyc_ctr2ix(wq, sq->pc);
 struct mlx5e_tx_wqe *wqe = mlx5_wq_cyc_get_wqe(wq, pi);

 struct mlx5_wqe_ctrl_seg *cseg = &wqe->ctrl;
 struct mlx5_wqe_eth_seg *eseg = &wqe->eth;
 struct mlx5_wqe_data_seg *dseg = wqe->data;

 dma_addr_t dma_addr = xdptxd->dma_addr;
 u32 dma_len = xdptxd->len;

 struct mlx5e_xdpsq_stats *stats = sq->stats;

 prefetchw(wqe);

 if (unlikely(dma_len < MLX5E_XDP_MIN_INLINE || sq->hw_mtu < dma_len)) {
  stats->err++;
  return 0;
 }

 if (!check_result)
  check_result = mlx5e_xmit_xdp_frame_check(sq);
 if (unlikely(check_result < 0))
  return 0;

 cseg->fm_ce_se = 0;


 if (sq->min_inline_mode != MLX5_INLINE_MODE_NONE) {
  memcpy(eseg->inline_hdr.start, xdptxd->data, MLX5E_XDP_MIN_INLINE);
  eseg->inline_hdr.sz = cpu_to_be16(MLX5E_XDP_MIN_INLINE);
  dma_len -= MLX5E_XDP_MIN_INLINE;
  dma_addr += MLX5E_XDP_MIN_INLINE;
  dseg++;
 }


 dseg->addr = cpu_to_be64(dma_addr);
 dseg->byte_count = cpu_to_be32(dma_len);

 cseg->opmod_idx_opcode = cpu_to_be32((sq->pc << 8) | MLX5_OPCODE_SEND);

 sq->pc++;

 sq->doorbell_cseg = cseg;

 mlx5e_xdpi_fifo_push(&sq->db.xdpi_fifo, xdpi);
 stats->xmit++;
 return 1;
}
