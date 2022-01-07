
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_fifo; int wqe_info; } ;
struct mlx5e_txqsq {TYPE_1__ db; } ;


 int kvfree (int ) ;

__attribute__((used)) static void mlx5e_free_txqsq_db(struct mlx5e_txqsq *sq)
{
 kvfree(sq->db.wqe_info);
 kvfree(sq->db.dma_fifo);
}
