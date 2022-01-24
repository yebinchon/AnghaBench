#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_fpga_tls {int caps; int /*<<< orphan*/  rx_idr_spinlock; int /*<<< orphan*/  tx_idr_spinlock; int /*<<< orphan*/  rx_idr; int /*<<< orphan*/  tx_idr; int /*<<< orphan*/  pending_cmds; int /*<<< orphan*/  pending_cmds_lock; struct mlx5_fpga_conn* conn; } ;
struct mlx5_fpga_device {struct mlx5_fpga_tls* tls; } ;
struct mlx5_fpga_conn_attr {struct mlx5_fpga_device* cb_arg; int /*<<< orphan*/  recv_cb; void* tx_size; void* rx_size; int /*<<< orphan*/  member_0; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_fpga_conn*) ; 
 int MLX5_ACCEL_TLS_AES_GCM128 ; 
 int MLX5_ACCEL_TLS_V12 ; 
 int FUNC2 (struct mlx5_fpga_conn*) ; 
 void* SBU_QP_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_tls*) ; 
 struct mlx5_fpga_tls* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 
 struct mlx5_fpga_conn* FUNC8 (struct mlx5_fpga_device*,struct mlx5_fpga_conn_attr*) ; 
 int FUNC9 (struct mlx5_fpga_device*,int*) ; 
 int /*<<< orphan*/  mlx5_fpga_tls_hw_qp_recv_cb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	struct mlx5_fpga_conn_attr init_attr = {0};
	struct mlx5_fpga_conn *conn;
	struct mlx5_fpga_tls *tls;
	int err = 0;

	if (!FUNC7(mdev) || !fdev)
		return 0;

	tls = FUNC5(sizeof(*tls), GFP_KERNEL);
	if (!tls)
		return -ENOMEM;

	err = FUNC9(fdev, &tls->caps);
	if (err)
		goto error;

	if (!(tls->caps & (MLX5_ACCEL_TLS_V12 | MLX5_ACCEL_TLS_AES_GCM128))) {
		err = -ENOTSUPP;
		goto error;
	}

	init_attr.rx_size = SBU_QP_QUEUE_SIZE;
	init_attr.tx_size = SBU_QP_QUEUE_SIZE;
	init_attr.recv_cb = mlx5_fpga_tls_hw_qp_recv_cb;
	init_attr.cb_arg = fdev;
	conn = FUNC8(fdev, &init_attr);
	if (FUNC1(conn)) {
		err = FUNC2(conn);
		FUNC6(fdev, "Error creating TLS command connection %d\n",
			      err);
		goto error;
	}

	tls->conn = conn;
	FUNC10(&tls->pending_cmds_lock);
	FUNC0(&tls->pending_cmds);

	FUNC3(&tls->tx_idr);
	FUNC3(&tls->rx_idr);
	FUNC10(&tls->tx_idr_spinlock);
	FUNC10(&tls->rx_idr_spinlock);
	fdev->tls = tls;
	return 0;

error:
	FUNC4(tls);
	return err;
}