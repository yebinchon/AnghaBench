
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fc {int id; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_fc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlx5_fc*) ;
 struct mlx5_fc* kzalloc (int,int ) ;
 int mlx5_cmd_fc_alloc (struct mlx5_core_dev*,int *) ;

__attribute__((used)) static struct mlx5_fc *mlx5_fc_single_alloc(struct mlx5_core_dev *dev)
{
 struct mlx5_fc *counter;
 int err;

 counter = kzalloc(sizeof(*counter), GFP_KERNEL);
 if (!counter)
  return ERR_PTR(-ENOMEM);

 err = mlx5_cmd_fc_alloc(dev, &counter->id);
 if (err) {
  kfree(counter);
  return ERR_PTR(err);
 }

 return counter;
}
