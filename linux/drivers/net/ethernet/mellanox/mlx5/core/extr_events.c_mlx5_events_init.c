
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_events {int pcie_core_work; int wq; struct mlx5_core_dev* dev; int nh; } ;
struct TYPE_2__ {struct mlx5_events* events; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int ATOMIC_INIT_NOTIFIER_HEAD (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 struct mlx5_events* kzalloc (int,int ) ;
 int mlx5_pcie_event ;

int mlx5_events_init(struct mlx5_core_dev *dev)
{
 struct mlx5_events *events = kzalloc(sizeof(*events), GFP_KERNEL);

 if (!events)
  return -ENOMEM;

 ATOMIC_INIT_NOTIFIER_HEAD(&events->nh);
 events->dev = dev;
 dev->priv.events = events;
 events->wq = create_singlethread_workqueue("mlx5_events");
 if (!events->wq)
  return -ENOMEM;
 INIT_WORK(&events->pcie_core_work, mlx5_pcie_event);

 return 0;
}
