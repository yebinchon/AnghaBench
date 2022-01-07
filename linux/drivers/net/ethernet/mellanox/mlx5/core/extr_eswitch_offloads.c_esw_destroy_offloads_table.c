
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_esw_offload {int ft_offloads; } ;
struct mlx5_eswitch {struct mlx5_esw_offload offloads; } ;


 int mlx5_destroy_flow_table (int ) ;

__attribute__((used)) static void esw_destroy_offloads_table(struct mlx5_eswitch *esw)
{
 struct mlx5_esw_offload *offloads = &esw->offloads;

 mlx5_destroy_flow_table(offloads->ft_offloads);
}
