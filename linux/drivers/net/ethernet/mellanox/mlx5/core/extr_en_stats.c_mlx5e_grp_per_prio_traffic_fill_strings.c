
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {char* format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_PPORT_PER_PRIO_TRAFFIC_COUNTERS ;
 int NUM_PPORT_PRIO ;
 TYPE_1__* pport_per_prio_traffic_stats_desc ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static int mlx5e_grp_per_prio_traffic_fill_strings(struct mlx5e_priv *priv,
         u8 *data,
         int idx)
{
 int i, prio;

 for (prio = 0; prio < NUM_PPORT_PRIO; prio++) {
  for (i = 0; i < NUM_PPORT_PER_PRIO_TRAFFIC_COUNTERS; i++)
   sprintf(data + (idx++) * ETH_GSTRING_LEN,
    pport_per_prio_traffic_stats_desc[i].format, prio);
 }

 return idx;
}
