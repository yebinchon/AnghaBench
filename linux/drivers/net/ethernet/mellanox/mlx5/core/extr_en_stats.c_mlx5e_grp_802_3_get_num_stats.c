
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int NUM_PPORT_802_3_COUNTERS ;

__attribute__((used)) static int mlx5e_grp_802_3_get_num_stats(struct mlx5e_priv *priv)
{
 return NUM_PPORT_802_3_COUNTERS;
}
