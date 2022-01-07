
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_en_rx_ring {int actual_size; int prod; int cons; int size_mask; } ;
struct mlx4_en_priv {int dummy; } ;


 int GFP_ATOMIC ;
 int __GFP_MEMALLOC ;
 scalar_t__ likely (int) ;
 scalar_t__ mlx4_en_prepare_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int,int) ;
 int mlx4_en_update_rx_prod_db (struct mlx4_en_rx_ring*) ;

__attribute__((used)) static void mlx4_en_refill_rx_buffers(struct mlx4_en_priv *priv,
          struct mlx4_en_rx_ring *ring)
{
 u32 missing = ring->actual_size - (ring->prod - ring->cons);


 if (missing < 8)
  return;
 do {
  if (mlx4_en_prepare_rx_desc(priv, ring,
         ring->prod & ring->size_mask,
         GFP_ATOMIC | __GFP_MEMALLOC))
   break;
  ring->prod++;
 } while (likely(--missing));

 mlx4_en_update_rx_prod_db(ring);
}
