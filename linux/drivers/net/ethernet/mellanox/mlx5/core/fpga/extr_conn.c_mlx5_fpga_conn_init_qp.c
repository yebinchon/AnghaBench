
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int pdn; } ;
struct mlx5_fpga_device {TYPE_1__ conn_res; struct mlx5_core_dev* mdev; } ;
struct TYPE_16__ {int qpn; } ;
struct TYPE_12__ {int dma; } ;
struct TYPE_13__ {TYPE_4__ db; } ;
struct TYPE_14__ {TYPE_8__ mqp; TYPE_5__ wq_ctrl; } ;
struct TYPE_10__ {int cqn; } ;
struct TYPE_11__ {TYPE_2__ mcq; } ;
struct mlx5_fpga_conn {TYPE_6__ qp; TYPE_3__ cq; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_15__ {int vhca_port_num; int pkey_index; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_CMD_OP_RST2INIT_QP ;
 int MLX5_FPGA_PKEY_INDEX ;
 int MLX5_FPGA_PORT_NUM ;
 int MLX5_QP_PM_MIGRATED ;
 int MLX5_QP_ST_RC ;
 int MLX5_SET (int *,int *,int ,int ) ;
 int MLX5_SET64 (int *,int *,int ,int ) ;
 int MLX5_ST_SZ_BYTES (int *) ;
 int cqn_rcv ;
 int cqn_snd ;
 int dbr_addr ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,int *,TYPE_8__*) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,int ) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int) ;
 int pd ;
 int pm_state ;
 TYPE_7__ primary_address_path ;
 int st ;

__attribute__((used)) static inline int mlx5_fpga_conn_init_qp(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_device *fdev = conn->fdev;
 struct mlx5_core_dev *mdev = fdev->mdev;
 u32 *qpc = ((void*)0);
 int err;

 mlx5_fpga_dbg(conn->fdev, "Modifying QP %u to INIT\n", conn->qp.mqp.qpn);

 qpc = kzalloc(MLX5_ST_SZ_BYTES(qpc), GFP_KERNEL);
 if (!qpc) {
  err = -ENOMEM;
  goto out;
 }

 MLX5_SET(qpc, qpc, st, MLX5_QP_ST_RC);
 MLX5_SET(qpc, qpc, pm_state, MLX5_QP_PM_MIGRATED);
 MLX5_SET(qpc, qpc, primary_address_path.pkey_index, MLX5_FPGA_PKEY_INDEX);
 MLX5_SET(qpc, qpc, primary_address_path.vhca_port_num, MLX5_FPGA_PORT_NUM);
 MLX5_SET(qpc, qpc, pd, conn->fdev->conn_res.pdn);
 MLX5_SET(qpc, qpc, cqn_snd, conn->cq.mcq.cqn);
 MLX5_SET(qpc, qpc, cqn_rcv, conn->cq.mcq.cqn);
 MLX5_SET64(qpc, qpc, dbr_addr, conn->qp.wq_ctrl.db.dma);

 err = mlx5_core_qp_modify(mdev, MLX5_CMD_OP_RST2INIT_QP, 0, qpc,
      &conn->qp.mqp);
 if (err) {
  mlx5_fpga_warn(fdev, "qp_modify RST2INIT failed: %d\n", err);
  goto out;
 }

out:
 kfree(qpc);
 return err;
}
