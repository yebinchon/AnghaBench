
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int num_tc; int * sq; int icosq; int rq; int state; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int mlx5e_deactivate_icosq (int *) ;
 int mlx5e_deactivate_rq (int *) ;
 int mlx5e_deactivate_txqsq (int *) ;
 int mlx5e_deactivate_xsk (struct mlx5e_channel*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void mlx5e_deactivate_channel(struct mlx5e_channel *c)
{
 int tc;

 if (test_bit(MLX5E_CHANNEL_STATE_XSK, c->state))
  mlx5e_deactivate_xsk(c);

 mlx5e_deactivate_rq(&c->rq);
 mlx5e_deactivate_icosq(&c->icosq);
 for (tc = 0; tc < c->num_tc; tc++)
  mlx5e_deactivate_txqsq(&c->sq[tc]);
}
