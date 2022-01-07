
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {int size; scalar_t__ prod; scalar_t__ cons; } ;
struct mlx4_en_priv {int dummy; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int,...) ;
 int mlx4_en_free_rx_desc (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,int) ;

__attribute__((used)) static void mlx4_en_free_rx_buf(struct mlx4_en_priv *priv,
    struct mlx4_en_rx_ring *ring)
{
 int index;

 en_dbg(DRV, priv, "Freeing Rx buf - cons:%d prod:%d\n",
        ring->cons, ring->prod);


 for (index = 0; index < ring->size; index++) {
  en_dbg(DRV, priv, "Processing descriptor:%d\n", index);
  mlx4_en_free_rx_desc(priv, ring, index);
 }
 ring->cons = 0;
 ring->prod = 0;
}
