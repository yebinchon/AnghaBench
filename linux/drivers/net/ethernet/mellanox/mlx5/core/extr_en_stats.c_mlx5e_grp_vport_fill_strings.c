
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_VPORT_COUNTERS ;
 int strcpy (int *,int ) ;
 TYPE_1__* vport_stats_desc ;

__attribute__((used)) static int mlx5e_grp_vport_fill_strings(struct mlx5e_priv *priv, u8 *data,
     int idx)
{
 int i;

 for (i = 0; i < NUM_VPORT_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN, vport_stats_desc[i].format);
 return idx;
}
