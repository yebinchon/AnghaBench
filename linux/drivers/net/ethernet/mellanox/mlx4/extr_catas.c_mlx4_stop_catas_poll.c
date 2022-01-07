
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * map; int timer; } ;
struct mlx4_priv {TYPE_1__ catas_err; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_4__ {int interface_state; int catas_wq; } ;


 int MLX4_INTERFACE_STATE_DELETION ;
 int del_timer_sync (int *) ;
 int flush_workqueue (int ) ;
 int iounmap (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

void mlx4_stop_catas_poll(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);

 del_timer_sync(&priv->catas_err.timer);

 if (priv->catas_err.map) {
  iounmap(priv->catas_err.map);
  priv->catas_err.map = ((void*)0);
 }

 if (dev->persist->interface_state & MLX4_INTERFACE_STATE_DELETION)
  flush_workqueue(dev->persist->catas_wq);
}
