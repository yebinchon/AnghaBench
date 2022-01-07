
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_device {int mdev; } ;
struct TYPE_2__ {int active; } ;
struct mlx5_fpga_conn {int fpga_qpc; int fpga_qpn; struct mlx5_fpga_device* fdev; TYPE_1__ qp; } ;


 int MLX5_FPGA_QPC_STATE ;
 int MLX5_FPGA_QPC_STATE_ACTIVE ;
 int MLX5_FPGA_QPC_STATE_INIT ;
 int MLX5_SET (int ,int ,int ,int ) ;
 int fpga_qpc ;
 int mlx5_fpga_conn_free_recv_bufs (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_init_qp (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_post_recv_buf (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_reset_qp (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_rtr_qp (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_rts_qp (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,...) ;
 int mlx5_fpga_modify_qp (int ,int ,int ,int *) ;
 int state ;

__attribute__((used)) static int mlx5_fpga_conn_connect(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_device *fdev = conn->fdev;
 int err;

 MLX5_SET(fpga_qpc, conn->fpga_qpc, state, MLX5_FPGA_QPC_STATE_ACTIVE);
 err = mlx5_fpga_modify_qp(conn->fdev->mdev, conn->fpga_qpn,
      MLX5_FPGA_QPC_STATE, &conn->fpga_qpc);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to activate FPGA RC QP: %d\n", err);
  goto out;
 }

 err = mlx5_fpga_conn_reset_qp(conn);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to change QP state to reset\n");
  goto err_fpga_qp;
 }

 err = mlx5_fpga_conn_init_qp(conn);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to modify QP from RESET to INIT\n");
  goto err_fpga_qp;
 }
 conn->qp.active = 1;

 while (!mlx5_fpga_conn_post_recv_buf(conn))
  ;

 err = mlx5_fpga_conn_rtr_qp(conn);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to change QP state from INIT to RTR\n");
  goto err_recv_bufs;
 }

 err = mlx5_fpga_conn_rts_qp(conn);
 if (err) {
  mlx5_fpga_err(fdev, "Failed to change QP state from RTR to RTS\n");
  goto err_recv_bufs;
 }
 goto out;

err_recv_bufs:
 mlx5_fpga_conn_free_recv_bufs(conn);
err_fpga_qp:
 MLX5_SET(fpga_qpc, conn->fpga_qpc, state, MLX5_FPGA_QPC_STATE_INIT);
 if (mlx5_fpga_modify_qp(conn->fdev->mdev, conn->fpga_qpn,
    MLX5_FPGA_QPC_STATE, &conn->fpga_qpc))
  mlx5_fpga_err(fdev, "Failed to revert FPGA QP to INIT\n");
out:
 return err;
}
