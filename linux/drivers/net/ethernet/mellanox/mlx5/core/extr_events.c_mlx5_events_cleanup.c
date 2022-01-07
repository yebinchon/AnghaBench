
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* events; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct TYPE_4__ {int wq; } ;


 int destroy_workqueue (int ) ;
 int kvfree (TYPE_2__*) ;

void mlx5_events_cleanup(struct mlx5_core_dev *dev)
{
 destroy_workqueue(dev->priv.events->wq);
 kvfree(dev->priv.events);
}
