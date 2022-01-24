#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_6__ {int active; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  mqp; } ;
struct TYPE_4__ {int /*<<< orphan*/  irqn; } ;
struct TYPE_5__ {TYPE_1__ mcq; int /*<<< orphan*/  tasklet; } ;
struct mlx5_fpga_conn {TYPE_3__ qp; struct mlx5_fpga_device* fdev; int /*<<< orphan*/  fpga_qpn; TYPE_2__ cq; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_2ERR_QP ; 
 int /*<<< orphan*/  MLX5_FPGA_PORT_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_fpga_conn*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_device *fdev = conn->fdev;
	struct mlx5_core_dev *mdev = fdev->mdev;
	int err = 0;

	conn->qp.active = false;
	FUNC9(&conn->cq.tasklet);
	FUNC8(conn->cq.mcq.irqn);

	FUNC6(conn->fdev->mdev, conn->fpga_qpn);
	err = FUNC1(mdev, MLX5_CMD_OP_2ERR_QP, 0, NULL,
				  &conn->qp.mqp);
	if (err)
		FUNC7(fdev, "qp_modify 2ERR failed: %d\n", err);
	FUNC5(conn);
	FUNC4(conn);

	FUNC3(conn->fdev->mdev, conn->qp.sgid_index, 0, 0,
			       NULL, NULL, false, 0, MLX5_FPGA_PORT_NUM);
	FUNC2(conn->fdev->mdev, conn->qp.sgid_index);
	FUNC0(conn);
}