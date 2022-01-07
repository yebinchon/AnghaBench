
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int xskicosq; int xskrq; } ;


 int mlx5e_deactivate_icosq (int *) ;
 int mlx5e_deactivate_rq (int *) ;

void mlx5e_deactivate_xsk(struct mlx5e_channel *c)
{
 mlx5e_deactivate_rq(&c->xskrq);

 mlx5e_deactivate_icosq(&c->xskicosq);
}
