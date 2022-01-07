
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_rx_ring {int rx_alloc_pages; } ;
struct mlx4_en_rx_desc {TYPE_1__* data; } ;
struct mlx4_en_rx_alloc {scalar_t__ page_offset; scalar_t__ dma; int page; } ;
struct mlx4_en_priv {int num_frags; } ;
typedef int gfp_t ;
struct TYPE_2__ {int addr; } ;


 int ENOMEM ;
 int cpu_to_be64 (scalar_t__) ;
 scalar_t__ mlx4_alloc_page (struct mlx4_en_priv*,struct mlx4_en_rx_alloc*,int ) ;

__attribute__((used)) static int mlx4_en_alloc_frags(struct mlx4_en_priv *priv,
          struct mlx4_en_rx_ring *ring,
          struct mlx4_en_rx_desc *rx_desc,
          struct mlx4_en_rx_alloc *frags,
          gfp_t gfp)
{
 int i;

 for (i = 0; i < priv->num_frags; i++, frags++) {
  if (!frags->page) {
   if (mlx4_alloc_page(priv, frags, gfp))
    return -ENOMEM;
   ring->rx_alloc_pages++;
  }
  rx_desc->data[i].addr = cpu_to_be64(frags->dma +
          frags->page_offset);
 }
 return 0;
}
