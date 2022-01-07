
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_hairpin {int num_channels; int pair; } ;


 int kvfree (struct mlx5e_hairpin*) ;
 int mlx5_core_hairpin_destroy (int ) ;
 int mlx5e_hairpin_destroy_transport (struct mlx5e_hairpin*) ;
 int mlx5e_hairpin_rss_cleanup (struct mlx5e_hairpin*) ;

__attribute__((used)) static void mlx5e_hairpin_destroy(struct mlx5e_hairpin *hp)
{
 if (hp->num_channels > 1)
  mlx5e_hairpin_rss_cleanup(hp);
 mlx5e_hairpin_destroy_transport(hp);
 mlx5_core_hairpin_destroy(hp->pair);
 kvfree(hp);
}
