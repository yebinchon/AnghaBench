
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int * res_tree; } ;
struct TYPE_5__ {TYPE_1__ res_tracker; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 void* res_tracker_lookup (int *,int ) ;

__attribute__((used)) static void *find_res(struct mlx4_dev *dev, u64 res_id,
        enum mlx4_resource type)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 return res_tracker_lookup(&priv->mfunc.master.res_tracker.res_tree[type],
      res_id);
}
