
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int counter_group_id; int counter; int type; } ;


 int MLX5_QUERY_MONITOR_CNT_TYPE_Q_COUNTER ;
 int MLX5_QUERY_MONITOR_Q_COUNTER_RX_OUT_OF_BUFFER ;
 int MLX5_SET (int ,int *,int ,int) ;
 TYPE_1__* monitor_counter ;
 int set_monitor_counter_in ;

__attribute__((used)) static int fill_monitor_counter_q_counter_set1(int cnt, int q_counter, u32 *in)
{
 MLX5_SET(set_monitor_counter_in, in,
   monitor_counter[cnt].type,
   MLX5_QUERY_MONITOR_CNT_TYPE_Q_COUNTER);
 MLX5_SET(set_monitor_counter_in, in,
   monitor_counter[cnt].counter,
   MLX5_QUERY_MONITOR_Q_COUNTER_RX_OUT_OF_BUFFER);
 MLX5_SET(set_monitor_counter_in, in,
   monitor_counter[cnt].counter_group_id,
   q_counter);
 return 1;
}
