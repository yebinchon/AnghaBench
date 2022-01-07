
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_flow_table {int * t; int g; } ;


 int kfree (int ) ;
 int mlx5_destroy_flow_table (int *) ;
 int mlx5e_destroy_groups (struct mlx5e_flow_table*) ;

void mlx5e_destroy_flow_table(struct mlx5e_flow_table *ft)
{
 mlx5e_destroy_groups(ft);
 kfree(ft->g);
 mlx5_destroy_flow_table(ft->t);
 ft->t = ((void*)0);
}
