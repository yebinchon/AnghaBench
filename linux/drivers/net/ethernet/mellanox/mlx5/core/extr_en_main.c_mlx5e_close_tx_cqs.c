
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5e_channel {int num_tc; TYPE_1__* sq; } ;
struct TYPE_2__ {int cq; } ;


 int mlx5e_close_cq (int *) ;

__attribute__((used)) static void mlx5e_close_tx_cqs(struct mlx5e_channel *c)
{
 int tc;

 for (tc = 0; tc < c->num_tc; tc++)
  mlx5e_close_cq(&c->sq[tc].cq);
}
