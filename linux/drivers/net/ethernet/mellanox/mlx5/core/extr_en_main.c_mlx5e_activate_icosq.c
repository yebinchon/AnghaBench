
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_icosq {int state; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 int set_bit (int ,int *) ;

void mlx5e_activate_icosq(struct mlx5e_icosq *icosq)
{
 set_bit(MLX5E_SQ_STATE_ENABLED, &icosq->state);
}
