
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_xdpsq {int wq_ctrl; } ;


 int mlx5_wq_destroy (int *) ;
 int mlx5e_free_xdpsq_db (struct mlx5e_xdpsq*) ;

__attribute__((used)) static void mlx5e_free_xdpsq(struct mlx5e_xdpsq *sq)
{
 mlx5e_free_xdpsq_db(sq);
 mlx5_wq_destroy(&sq->wq_ctrl);
}
