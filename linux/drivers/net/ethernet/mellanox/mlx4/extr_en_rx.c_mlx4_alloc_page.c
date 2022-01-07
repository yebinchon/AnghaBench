
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mlx4_en_rx_alloc {int page_offset; int dma; struct page* page; } ;
struct mlx4_en_priv {int rx_headroom; int ddev; int dma_dir; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int dma_map_page (int ,struct page*,int ,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mlx4_alloc_page(struct mlx4_en_priv *priv,
      struct mlx4_en_rx_alloc *frag,
      gfp_t gfp)
{
 struct page *page;
 dma_addr_t dma;

 page = alloc_page(gfp);
 if (unlikely(!page))
  return -ENOMEM;
 dma = dma_map_page(priv->ddev, page, 0, PAGE_SIZE, priv->dma_dir);
 if (unlikely(dma_mapping_error(priv->ddev, dma))) {
  __free_page(page);
  return -ENOMEM;
 }
 frag->page = page;
 frag->dma = dma;
 frag->page_offset = priv->rx_headroom;
 return 0;
}
