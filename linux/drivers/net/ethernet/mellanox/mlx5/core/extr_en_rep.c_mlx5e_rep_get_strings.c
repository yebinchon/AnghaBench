
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int format; } ;


 int ETH_GSTRING_LEN ;

 int NUM_VPORT_REP_HW_COUNTERS ;
 int NUM_VPORT_REP_SW_COUNTERS ;
 int strcpy (int *,int ) ;
 TYPE_2__* sw_rep_stats_desc ;
 TYPE_1__* vport_rep_stats_desc ;

__attribute__((used)) static void mlx5e_rep_get_strings(struct net_device *dev,
      u32 stringset, uint8_t *data)
{
 int i, j;

 switch (stringset) {
 case 128:
  for (i = 0; i < NUM_VPORT_REP_SW_COUNTERS; i++)
   strcpy(data + (i * ETH_GSTRING_LEN),
          sw_rep_stats_desc[i].format);
  for (j = 0; j < NUM_VPORT_REP_HW_COUNTERS; j++, i++)
   strcpy(data + (i * ETH_GSTRING_LEN),
          vport_rep_stats_desc[j].format);
  break;
 }
}
