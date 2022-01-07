
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct mlx5e_channel {int xskicosq_lock; int xskicosq; TYPE_1__ xskrq; } ;


 int MLX5E_RQ_STATE_ENABLED ;
 int mlx5e_activate_icosq (int *) ;
 int mlx5e_trigger_irq (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mlx5e_activate_xsk(struct mlx5e_channel *c)
{
 mlx5e_activate_icosq(&c->xskicosq);
 set_bit(MLX5E_RQ_STATE_ENABLED, &c->xskrq.state);


 spin_lock(&c->xskicosq_lock);
 mlx5e_trigger_irq(&c->xskicosq);
 spin_unlock(&c->xskicosq_lock);
}
