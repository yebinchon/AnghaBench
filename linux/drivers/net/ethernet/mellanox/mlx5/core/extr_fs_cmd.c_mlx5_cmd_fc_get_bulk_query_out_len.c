
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLX5_ST_SZ_BYTES (int ) ;
 int query_flow_counter_out ;
 int traffic_counter ;

int mlx5_cmd_fc_get_bulk_query_out_len(int bulk_len)
{
 return MLX5_ST_SZ_BYTES(query_flow_counter_out) +
  MLX5_ST_SZ_BYTES(traffic_counter) * bulk_len;
}
