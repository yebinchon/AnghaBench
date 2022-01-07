
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int ** bufs; } ;
struct TYPE_4__ {TYPE_1__ rq; } ;
struct mlx5_fpga_conn {TYPE_2__ qp; } ;


 int kfree (int *) ;
 int mlx5_fpga_conn_unmap_buf (struct mlx5_fpga_conn*,int *) ;

__attribute__((used)) static void mlx5_fpga_conn_free_recv_bufs(struct mlx5_fpga_conn *conn)
{
 int ix;

 for (ix = 0; ix < conn->qp.rq.size; ix++) {
  if (!conn->qp.rq.bufs[ix])
   continue;
  mlx5_fpga_conn_unmap_buf(conn, conn->qp.rq.bufs[ix]);
  kfree(conn->qp.rq.bufs[ix]);
  conn->qp.rq.bufs[ix] = ((void*)0);
 }
}
