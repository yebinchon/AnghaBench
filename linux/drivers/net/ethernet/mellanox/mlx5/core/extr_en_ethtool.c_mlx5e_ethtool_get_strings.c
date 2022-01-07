
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ETH_GSTRING_LEN ;



 int MLX5E_NUM_PFLAGS ;
 int mlx5e_fill_stats_strings (struct mlx5e_priv*,int *) ;
 TYPE_1__* mlx5e_priv_flags ;
 int mlx5e_self_test_num (struct mlx5e_priv*) ;
 int * mlx5e_self_tests ;
 int strcpy (int *,int ) ;

void mlx5e_ethtool_get_strings(struct mlx5e_priv *priv, u32 stringset, u8 *data)
{
 int i;

 switch (stringset) {
 case 130:
  for (i = 0; i < MLX5E_NUM_PFLAGS; i++)
   strcpy(data + i * ETH_GSTRING_LEN,
          mlx5e_priv_flags[i].name);
  break;

 case 128:
  for (i = 0; i < mlx5e_self_test_num(priv); i++)
   strcpy(data + i * ETH_GSTRING_LEN,
          mlx5e_self_tests[i]);
  break;

 case 129:
  mlx5e_fill_stats_strings(priv, data);
  break;
 }
}
