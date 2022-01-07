
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc {int id; } ;
struct mlx5_core_dev {int dummy; } ;


 int kfree (struct mlx5_fc*) ;
 int mlx5_cmd_fc_free (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static void mlx5_fc_free(struct mlx5_core_dev *dev, struct mlx5_fc *counter)
{
 mlx5_cmd_fc_free(dev, counter->id);
 kfree(counter);
}
