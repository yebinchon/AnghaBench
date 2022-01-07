
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_txqsq {int wq_ctrl; } ;


 int mlx5_wq_destroy (int *) ;
 int mlx5e_free_txqsq_db (struct mlx5e_txqsq*) ;

__attribute__((used)) static void mlx5e_free_txqsq(struct mlx5e_txqsq *sq)
{
 mlx5e_free_txqsq_db(sq);
 mlx5_wq_destroy(&sq->wq_ctrl);
}
