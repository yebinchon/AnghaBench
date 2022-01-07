
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eq_param {int dummy; } ;
struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_eq* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int create_async_eq (struct mlx5_core_dev*,struct mlx5_eq*,struct mlx5_eq_param*) ;
 int kvfree (struct mlx5_eq*) ;
 struct mlx5_eq* kvzalloc (int,int ) ;

struct mlx5_eq *
mlx5_eq_create_generic(struct mlx5_core_dev *dev,
         struct mlx5_eq_param *param)
{
 struct mlx5_eq *eq = kvzalloc(sizeof(*eq), GFP_KERNEL);
 int err;

 if (!eq)
  return ERR_PTR(-ENOMEM);

 err = create_async_eq(dev, eq, param);
 if (err) {
  kvfree(eq);
  eq = ERR_PTR(err);
 }

 return eq;
}
