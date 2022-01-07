
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_en_rx_ring {int affinity_mask; } ;
struct mlx4_en_priv {TYPE_2__* mdev; struct mlx4_en_rx_ring** rx_ring; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int numa_node; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpumask_local_spread (int,int) ;
 int cpumask_set_cpu (int ,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static int mlx4_en_init_affinity_hint(struct mlx4_en_priv *priv, int ring_idx)
{
 struct mlx4_en_rx_ring *ring = priv->rx_ring[ring_idx];
 int numa_node = priv->mdev->dev->numa_node;

 if (!zalloc_cpumask_var(&ring->affinity_mask, GFP_KERNEL))
  return -ENOMEM;

 cpumask_set_cpu(cpumask_local_spread(ring_idx, numa_node),
   ring->affinity_mask);
 return 0;
}
