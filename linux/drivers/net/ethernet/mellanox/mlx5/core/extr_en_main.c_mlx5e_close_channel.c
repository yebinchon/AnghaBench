
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int napi; int state; } ;


 int MLX5E_CHANNEL_STATE_XSK ;
 int kvfree (struct mlx5e_channel*) ;
 int mlx5e_close_queues (struct mlx5e_channel*) ;
 int mlx5e_close_xsk (struct mlx5e_channel*) ;
 int mlx5e_free_xps_cpumask (struct mlx5e_channel*) ;
 int netif_napi_del (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void mlx5e_close_channel(struct mlx5e_channel *c)
{
 if (test_bit(MLX5E_CHANNEL_STATE_XSK, c->state))
  mlx5e_close_xsk(c);
 mlx5e_close_queues(c);
 netif_napi_del(&c->napi);
 mlx5e_free_xps_cpumask(c);

 kvfree(c);
}
