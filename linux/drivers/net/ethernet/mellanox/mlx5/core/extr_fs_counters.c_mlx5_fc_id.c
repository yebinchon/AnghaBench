
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_fc {int id; } ;



u32 mlx5_fc_id(struct mlx5_fc *counter)
{
 return counter->id;
}
