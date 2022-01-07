
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_steering {int fgs_cache; } ;
struct mlx5_flow_group {int ftes_hash; } ;


 int kmem_cache_free (int ,struct mlx5_flow_group*) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void dealloc_flow_group(struct mlx5_flow_steering *steering,
          struct mlx5_flow_group *fg)
{
 rhashtable_destroy(&fg->ftes_hash);
 kmem_cache_free(steering->fgs_cache, fg);
}
