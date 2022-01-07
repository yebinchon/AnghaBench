
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__** rx_ring; } ;
struct TYPE_2__ {int affinity_mask; } ;


 int free_cpumask_var (int ) ;

__attribute__((used)) static void mlx4_en_free_affinity_hint(struct mlx4_en_priv *priv, int ring_idx)
{
 free_cpumask_var(priv->rx_ring[ring_idx]->affinity_mask);
}
