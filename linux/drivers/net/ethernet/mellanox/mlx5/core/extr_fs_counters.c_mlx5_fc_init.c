
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_fc_bulk {int dummy; } ;
struct mlx5_fc {int id; struct mlx5_fc_bulk* bulk; } ;



__attribute__((used)) static void mlx5_fc_init(struct mlx5_fc *counter, struct mlx5_fc_bulk *bulk,
    u32 id)
{
 counter->bulk = bulk;
 counter->id = id;
}
