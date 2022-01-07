
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hairpin {int dummy; } ;


 int kfree (struct mlx5_hairpin*) ;
 int mlx5_hairpin_destroy_queues (struct mlx5_hairpin*) ;
 int mlx5_hairpin_unpair_queues (struct mlx5_hairpin*) ;

void mlx5_core_hairpin_destroy(struct mlx5_hairpin *hp)
{
 mlx5_hairpin_unpair_queues(hp);
 mlx5_hairpin_destroy_queues(hp);
 kfree(hp);
}
