
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_PPORT_PER_PRIO_TRAFFIC_COUNTERS ;
 int NUM_PPORT_PRIO ;

__attribute__((used)) static int mlx5e_grp_per_prio_traffic_get_num_stats(void)
{
 return NUM_PPORT_PER_PRIO_TRAFFIC_COUNTERS * NUM_PPORT_PRIO;
}
