
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int expires; } ;
struct mlx5_core_health {TYPE_3__ timer; int * health_counter; int * health; int flags; int fatal_error; } ;
struct TYPE_6__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__* iseg; TYPE_2__ priv; } ;
struct TYPE_5__ {int health_counter; int health; } ;


 int MLX5_DROP_NEW_HEALTH_WORK ;
 scalar_t__ MLX5_HEALTH_POLL_INTERVAL ;
 int MLX5_SENSOR_NO_ERR ;
 int add_timer (TYPE_3__*) ;
 int clear_bit (int ,int *) ;
 scalar_t__ jiffies ;
 int poll_health ;
 int round_jiffies (scalar_t__) ;
 int timer_setup (TYPE_3__*,int ,int ) ;

void mlx5_start_health_poll(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;

 timer_setup(&health->timer, poll_health, 0);
 health->fatal_error = MLX5_SENSOR_NO_ERR;
 clear_bit(MLX5_DROP_NEW_HEALTH_WORK, &health->flags);
 health->health = &dev->iseg->health;
 health->health_counter = &dev->iseg->health_counter;

 health->timer.expires = round_jiffies(jiffies + MLX5_HEALTH_POLL_INTERVAL);
 add_timer(&health->timer);
}
