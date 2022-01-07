
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum mlx5_monitor_counter_ppcnt { ____Placeholder_mlx5_monitor_counter_ppcnt } mlx5_monitor_counter_ppcnt ;
struct TYPE_2__ {int counter; int type; } ;


 int MLX5_QUERY_MONITOR_CNT_TYPE_PPCNT ;
 int MLX5_SET (int ,int *,int ,int) ;
 int NUM_REQ_PPCNT_COUNTER_S1 ;
 TYPE_1__* monitor_counter ;
 int set_monitor_counter_in ;

__attribute__((used)) static int fill_monitor_counter_ppcnt_set1(int cnt, u32 *in)
{
 enum mlx5_monitor_counter_ppcnt ppcnt_cnt;

 for (ppcnt_cnt = 0;
      ppcnt_cnt < NUM_REQ_PPCNT_COUNTER_S1;
      ppcnt_cnt++, cnt++) {
  MLX5_SET(set_monitor_counter_in, in,
    monitor_counter[cnt].type,
    MLX5_QUERY_MONITOR_CNT_TYPE_PPCNT);
  MLX5_SET(set_monitor_counter_in, in,
    monitor_counter[cnt].counter,
    ppcnt_cnt);
 }
 return ppcnt_cnt;
}
