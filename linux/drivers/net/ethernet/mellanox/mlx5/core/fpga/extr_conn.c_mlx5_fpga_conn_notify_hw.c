
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pc; } ;
struct TYPE_8__ {int * db; } ;
struct TYPE_9__ {TYPE_1__ sq; } ;
struct TYPE_11__ {TYPE_3__ sq; TYPE_2__ wq; } ;
struct mlx5_fpga_conn {TYPE_7__* fdev; TYPE_4__ qp; } ;
struct TYPE_13__ {TYPE_5__* uar; } ;
struct TYPE_14__ {TYPE_6__ conn_res; } ;
struct TYPE_12__ {scalar_t__ map; } ;


 scalar_t__ MLX5_BF_OFFSET ;
 int cpu_to_be32 (int ) ;
 int dma_wmb () ;
 int mlx5_write64 (void*,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void mlx5_fpga_conn_notify_hw(struct mlx5_fpga_conn *conn, void *wqe)
{

 dma_wmb();
 *conn->qp.wq.sq.db = cpu_to_be32(conn->qp.sq.pc);

 wmb();
 mlx5_write64(wqe, conn->fdev->conn_res.uar->map + MLX5_BF_OFFSET);
}
