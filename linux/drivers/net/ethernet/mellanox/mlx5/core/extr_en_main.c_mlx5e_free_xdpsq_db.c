
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xi; } ;
struct TYPE_4__ {int wqe_info; TYPE_1__ xdpi_fifo; } ;
struct mlx5e_xdpsq {TYPE_2__ db; } ;


 int kvfree (int ) ;

__attribute__((used)) static void mlx5e_free_xdpsq_db(struct mlx5e_xdpsq *sq)
{
 kvfree(sq->db.xdpi_fifo.xi);
 kvfree(sq->db.wqe_info);
}
