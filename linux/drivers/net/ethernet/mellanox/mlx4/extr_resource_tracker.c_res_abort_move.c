
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct res_common {int owner; int from_state; int state; } ;
struct mlx4_resource_tracker {int * res_tree; } ;
struct TYPE_3__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_tlock (struct mlx4_dev*) ;
 struct res_common* res_tracker_lookup (int *,int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void res_abort_move(struct mlx4_dev *dev, int slave,
      enum mlx4_resource type, int id)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
 struct res_common *r;

 spin_lock_irq(mlx4_tlock(dev));
 r = res_tracker_lookup(&tracker->res_tree[type], id);
 if (r && (r->owner == slave))
  r->state = r->from_state;
 spin_unlock_irq(mlx4_tlock(dev));
}
