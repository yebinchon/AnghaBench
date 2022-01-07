
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_txqsq {int pdev; struct mlx5e_sq_stats* stats; } ;
struct mlx5e_tx_wqe_info {scalar_t__ num_bytes; int resync_dump_frag_page; } ;
struct mlx5e_sq_stats {int tls_dump_bytes; int tls_dump_packets; } ;
struct mlx5e_sq_dma {int dummy; } ;


 struct mlx5e_sq_dma* mlx5e_dma_get (struct mlx5e_txqsq*,int ) ;
 int mlx5e_tx_dma_unmap (int ,struct mlx5e_sq_dma*) ;
 int put_page (int ) ;

void mlx5e_ktls_tx_handle_resync_dump_comp(struct mlx5e_txqsq *sq,
        struct mlx5e_tx_wqe_info *wi,
        u32 *dma_fifo_cc)
{
 struct mlx5e_sq_stats *stats;
 struct mlx5e_sq_dma *dma;

 if (!wi->resync_dump_frag_page)
  return;

 dma = mlx5e_dma_get(sq, (*dma_fifo_cc)++);
 stats = sq->stats;

 mlx5e_tx_dma_unmap(sq->pdev, dma);
 put_page(wi->resync_dump_frag_page);
 stats->tls_dump_packets++;
 stats->tls_dump_bytes += wi->num_bytes;
}
