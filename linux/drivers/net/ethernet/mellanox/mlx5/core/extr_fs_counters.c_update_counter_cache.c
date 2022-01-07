
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct mlx5_fc_cache {scalar_t__ packets; int lastuse; scalar_t__ bytes; } ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 scalar_t__ MLX5_GET64 (int ,void*,int ) ;
 int * flow_statistics ;
 int jiffies ;
 int octets ;
 scalar_t__ packets ;
 int query_flow_counter_out ;
 int traffic_counter ;

__attribute__((used)) static void update_counter_cache(int index, u32 *bulk_raw_data,
     struct mlx5_fc_cache *cache)
{
 void *stats = MLX5_ADDR_OF(query_flow_counter_out, bulk_raw_data,
        flow_statistics[index]);
 u64 packets = MLX5_GET64(traffic_counter, stats, packets);
 u64 bytes = MLX5_GET64(traffic_counter, stats, octets);

 if (cache->packets == packets)
  return;

 cache->packets = packets;
 cache->bytes = bytes;
 cache->lastuse = jiffies;
}
