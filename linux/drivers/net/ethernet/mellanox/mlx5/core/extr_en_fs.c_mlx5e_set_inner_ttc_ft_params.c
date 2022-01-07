
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table_attr {int prio; int level; int max_fte; } ;
struct ttc_params {struct mlx5_flow_table_attr ft_attr; } ;


 int MLX5E_INNER_TTC_FT_LEVEL ;
 int MLX5E_INNER_TTC_TABLE_SIZE ;
 int MLX5E_NIC_PRIO ;

void mlx5e_set_inner_ttc_ft_params(struct ttc_params *ttc_params)
{
 struct mlx5_flow_table_attr *ft_attr = &ttc_params->ft_attr;

 ft_attr->max_fte = MLX5E_INNER_TTC_TABLE_SIZE;
 ft_attr->level = MLX5E_INNER_TTC_FT_LEVEL;
 ft_attr->prio = MLX5E_NIC_PRIO;
}
