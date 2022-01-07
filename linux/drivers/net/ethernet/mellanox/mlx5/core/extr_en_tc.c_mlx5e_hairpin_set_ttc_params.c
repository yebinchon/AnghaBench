
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table_attr {int prio; int level; int max_fte; } ;
struct ttc_params {int * indir_tirn; int any_tt_tirn; struct mlx5_flow_table_attr ft_attr; } ;
struct mlx5e_hairpin {int * indir_tirn; int tirn; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 int MLX5E_NUM_TT ;
 int MLX5E_TC_PRIO ;
 int MLX5E_TC_TTC_FT_LEVEL ;
 int memset (struct ttc_params*,int ,int) ;

__attribute__((used)) static void mlx5e_hairpin_set_ttc_params(struct mlx5e_hairpin *hp,
      struct ttc_params *ttc_params)
{
 struct mlx5_flow_table_attr *ft_attr = &ttc_params->ft_attr;
 int tt;

 memset(ttc_params, 0, sizeof(*ttc_params));

 ttc_params->any_tt_tirn = hp->tirn;

 for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++)
  ttc_params->indir_tirn[tt] = hp->indir_tirn[tt];

 ft_attr->max_fte = MLX5E_NUM_TT;
 ft_attr->level = MLX5E_TC_TTC_FT_LEVEL;
 ft_attr->prio = MLX5E_TC_PRIO;
}
