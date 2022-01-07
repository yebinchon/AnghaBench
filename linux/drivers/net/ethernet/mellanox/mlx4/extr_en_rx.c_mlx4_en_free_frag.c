
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_alloc {scalar_t__ page; int dma; } ;
struct mlx4_en_priv {int dma_dir; int ddev; } ;


 int PAGE_SIZE ;
 int __free_page (scalar_t__) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int memset (struct mlx4_en_rx_alloc*,int ,int) ;

__attribute__((used)) static void mlx4_en_free_frag(const struct mlx4_en_priv *priv,
         struct mlx4_en_rx_alloc *frag)
{
 if (frag->page) {
  dma_unmap_page(priv->ddev, frag->dma,
          PAGE_SIZE, priv->dma_dir);
  __free_page(frag->page);
 }



 memset(frag, 0, sizeof(*frag));
}
