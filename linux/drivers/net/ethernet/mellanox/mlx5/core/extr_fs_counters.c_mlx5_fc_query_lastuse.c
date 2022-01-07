
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int lastuse; } ;
struct mlx5_fc {TYPE_1__ cache; } ;



u64 mlx5_fc_query_lastuse(struct mlx5_fc *counter)
{
 return counter->cache.lastuse;
}
