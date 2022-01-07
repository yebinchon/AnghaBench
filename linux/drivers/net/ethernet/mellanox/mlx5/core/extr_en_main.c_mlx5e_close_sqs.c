
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_channel {int num_tc; int * sq; } ;


 int mlx5e_close_txqsq (int *) ;

__attribute__((used)) static void mlx5e_close_sqs(struct mlx5e_channel *c)
{
 int tc;

 for (tc = 0; tc < c->num_tc; tc++)
  mlx5e_close_txqsq(&c->sq[tc]);
}
