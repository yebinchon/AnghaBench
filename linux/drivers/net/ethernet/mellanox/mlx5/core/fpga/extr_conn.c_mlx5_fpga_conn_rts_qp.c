
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int mqp; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; int fpga_qpc; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int ack_timeout; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CMD_OP_RTR2RTS_QP ;
 int MLX5_GET (int ,int ,int ) ;
 int MLX5_QP_OPTPAR_RNR_TIMEOUT ;
 int MLX5_SET (int *,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int *) ;
 int fpga_qpc ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int log_ack_req_freq ;
 int min_rnr_nak ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,int *,int *) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int) ;
 int next_rcv_psn ;
 int next_send_psn ;
 TYPE_2__ primary_address_path ;
 int retry_count ;
 int rnr_retry ;

__attribute__((used)) static inline int mlx5_fpga_conn_rts_qp(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_device *fdev = conn->fdev;
 struct mlx5_core_dev *mdev = fdev->mdev;
 u32 *qpc = ((void*)0);
 u32 opt_mask;
 int err;

 mlx5_fpga_dbg(conn->fdev, "QP RTS\n");

 qpc = kzalloc(MLX5_ST_SZ_BYTES(qpc), GFP_KERNEL);
 if (!qpc) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(qpc, qpc, log_ack_req_freq, 8);
 MLX5_SET(qpc, qpc, min_rnr_nak, 0x12);
 MLX5_SET(qpc, qpc, primary_address_path.ack_timeout, 0x12);
 MLX5_SET(qpc, qpc, next_send_psn,
   MLX5_GET(fpga_qpc, conn->fpga_qpc, next_rcv_psn));
 MLX5_SET(qpc, qpc, retry_count, 7);
 MLX5_SET(qpc, qpc, rnr_retry, 7);

 opt_mask = MLX5_QP_OPTPAR_RNR_TIMEOUT;
 err = mlx5_core_qp_modify(mdev, MLX5_CMD_OP_RTR2RTS_QP, opt_mask, qpc,
      &conn->qp.mqp);
 if (err) {
  mlx5_fpga_warn(fdev, "qp_modify RST2INIT failed: %d\n", err);
  goto out;
 }

out:
 kfree(qpc);
 return err;
}
