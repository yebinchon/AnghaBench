
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {struct mlx4_en_rx_alloc* rx_info; } ;
struct mlx4_en_rx_alloc {int dummy; } ;
struct mlx4_en_priv {int log_rx_info; int num_frags; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv const*,char*,int) ;
 int mlx4_en_free_frag (struct mlx4_en_priv const*,struct mlx4_en_rx_alloc*) ;

__attribute__((used)) static void mlx4_en_free_rx_desc(const struct mlx4_en_priv *priv,
     struct mlx4_en_rx_ring *ring,
     int index)
{
 struct mlx4_en_rx_alloc *frags;
 int nr;

 frags = ring->rx_info + (index << priv->log_rx_info);
 for (nr = 0; nr < priv->num_frags; nr++) {
  en_dbg(DRV, priv, "Freeing fragment:%d\n", nr);
  mlx4_en_free_frag(priv, frags + nr);
 }
}
