
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int fatal_report_work; int report_work; int wq_lock; int flags; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int MLX5_DROP_NEW_HEALTH_WORK ;
 int cancel_work_sync (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_drain_health_wq(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;
 unsigned long flags;

 spin_lock_irqsave(&health->wq_lock, flags);
 set_bit(MLX5_DROP_NEW_HEALTH_WORK, &health->flags);
 spin_unlock_irqrestore(&health->wq_lock, flags);
 cancel_work_sync(&health->report_work);
 cancel_work_sync(&health->fatal_report_work);
}
