
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int num_tc; int state; int ix; int xps_cpumask; int netdev; int rq; int icosq; int * sq; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int mlx5e_activate_icosq (int *) ;
 int mlx5e_activate_rq (int *) ;
 int mlx5e_activate_txqsq (int *) ;
 int mlx5e_activate_xsk (struct mlx5e_channel*) ;
 int netif_set_xps_queue (int ,int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void mlx5e_activate_channel(struct mlx5e_channel *c)
{
 int tc;

 for (tc = 0; tc < c->num_tc; tc++)
  mlx5e_activate_txqsq(&c->sq[tc]);
 mlx5e_activate_icosq(&c->icosq);
 mlx5e_activate_rq(&c->rq);
 netif_set_xps_queue(c->netdev, c->xps_cpumask, c->ix);

 if (test_bit(MLX5E_CHANNEL_STATE_XSK, c->state))
  mlx5e_activate_xsk(c);
}
