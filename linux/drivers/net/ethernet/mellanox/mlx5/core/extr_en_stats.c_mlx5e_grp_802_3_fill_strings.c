
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_PPORT_802_3_COUNTERS ;
 TYPE_1__* pport_802_3_stats_desc ;
 int strcpy (int *,int ) ;

__attribute__((used)) static int mlx5e_grp_802_3_fill_strings(struct mlx5e_priv *priv, u8 *data,
     int idx)
{
 int i;

 for (i = 0; i < NUM_PPORT_802_3_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN, pport_802_3_stats_desc[i].format);
 return idx;
}
