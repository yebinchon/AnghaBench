
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct mlx5_fc_cache {scalar_t__ packets; scalar_t__ bytes; scalar_t__ lastuse; } ;
struct mlx5_fc {scalar_t__ lastpackets; scalar_t__ lastbytes; struct mlx5_fc_cache cache; } ;



void mlx5_fc_query_cached(struct mlx5_fc *counter,
     u64 *bytes, u64 *packets, u64 *lastuse)
{
 struct mlx5_fc_cache c;

 c = counter->cache;

 *bytes = c.bytes - counter->lastbytes;
 *packets = c.packets - counter->lastpackets;
 *lastuse = c.lastuse;

 counter->lastbytes = c.bytes;
 counter->lastpackets = c.packets;
}
