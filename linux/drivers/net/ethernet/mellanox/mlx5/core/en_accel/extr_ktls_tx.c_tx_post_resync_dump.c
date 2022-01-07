
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5e_txqsq {int pc; int sqn; int mkey_be; int pdev; } ;
struct mlx5_wqe_data_seg {void* byte_count; int lkey; int addr; } ;
struct mlx5_wqe_ctrl_seg {int fm_ce_se; void* tisn; void* qpn_ds; void* opmod_idx_opcode; } ;
struct mlx5e_dump_wqe {struct mlx5_wqe_data_seg data; struct mlx5_wqe_ctrl_seg ctrl; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MLX5E_DMA_MAP_PAGE ;
 scalar_t__ MLX5E_KTLS_DUMP_WQEBBS ;
 int MLX5_FENCE_MODE_INITIATOR_SMALL ;
 int MLX5_OPCODE_DUMP ;
 int MLX5_SEND_WQE_DS ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int dma_mapping_error (int ,int ) ;
 int mlx5e_dma_push (struct mlx5e_txqsq*,int ,int,int ) ;
 struct mlx5e_dump_wqe* mlx5e_sq_fetch_wqe (struct mlx5e_txqsq*,int,int*) ;
 int skb_frag_dma_map (int ,int *,int ,int,int ) ;
 int skb_frag_page (int *) ;
 int skb_frag_size (int *) ;
 int tx_fill_wi (struct mlx5e_txqsq*,int,scalar_t__,int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
tx_post_resync_dump(struct mlx5e_txqsq *sq, skb_frag_t *frag, u32 tisn, bool first)
{
 struct mlx5_wqe_ctrl_seg *cseg;
 struct mlx5_wqe_data_seg *dseg;
 struct mlx5e_dump_wqe *wqe;
 dma_addr_t dma_addr = 0;
 u16 ds_cnt;
 int fsz;
 u16 pi;

 wqe = mlx5e_sq_fetch_wqe(sq, sizeof(*wqe), &pi);

 ds_cnt = sizeof(*wqe) / MLX5_SEND_WQE_DS;

 cseg = &wqe->ctrl;
 dseg = &wqe->data;

 cseg->opmod_idx_opcode = cpu_to_be32((sq->pc << 8) | MLX5_OPCODE_DUMP);
 cseg->qpn_ds = cpu_to_be32((sq->sqn << 8) | ds_cnt);
 cseg->tisn = cpu_to_be32(tisn << 8);
 cseg->fm_ce_se = first ? MLX5_FENCE_MODE_INITIATOR_SMALL : 0;

 fsz = skb_frag_size(frag);
 dma_addr = skb_frag_dma_map(sq->pdev, frag, 0, fsz,
        DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(sq->pdev, dma_addr)))
  return -ENOMEM;

 dseg->addr = cpu_to_be64(dma_addr);
 dseg->lkey = sq->mkey_be;
 dseg->byte_count = cpu_to_be32(fsz);
 mlx5e_dma_push(sq, dma_addr, fsz, MLX5E_DMA_MAP_PAGE);

 tx_fill_wi(sq, pi, MLX5E_KTLS_DUMP_WQEBBS, fsz, skb_frag_page(frag));
 sq->pc += MLX5E_KTLS_DUMP_WQEBBS;

 return 0;
}
