
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_fc {int id; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_cmd_fc_query (struct mlx5_core_dev*,int ,int *,int *) ;

int mlx5_fc_query(struct mlx5_core_dev *dev, struct mlx5_fc *counter,
    u64 *packets, u64 *bytes)
{
 return mlx5_cmd_fc_query(dev, counter->id, packets, bytes);
}
