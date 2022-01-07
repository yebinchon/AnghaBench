
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_en_tx_ring {int recycle_ring; struct mlx4_en_tx_info* tx_info; } ;
struct mlx4_en_tx_info {int nr_txbb; int page; int map0_dma; } ;
struct mlx4_en_rx_alloc {int dma; int page; } ;
struct mlx4_en_priv {int dma_dir; int ddev; } ;


 int PAGE_SIZE ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int mlx4_en_rx_recycle (int ,struct mlx4_en_rx_alloc*) ;
 int put_page (int ) ;

u32 mlx4_en_recycle_tx_desc(struct mlx4_en_priv *priv,
       struct mlx4_en_tx_ring *ring,
       int index, u64 timestamp,
       int napi_mode)
{
 struct mlx4_en_tx_info *tx_info = &ring->tx_info[index];
 struct mlx4_en_rx_alloc frame = {
  .page = tx_info->page,
  .dma = tx_info->map0_dma,
 };

 if (!mlx4_en_rx_recycle(ring->recycle_ring, &frame)) {
  dma_unmap_page(priv->ddev, tx_info->map0_dma,
          PAGE_SIZE, priv->dma_dir);
  put_page(tx_info->page);
 }

 return tx_info->nr_txbb;
}
