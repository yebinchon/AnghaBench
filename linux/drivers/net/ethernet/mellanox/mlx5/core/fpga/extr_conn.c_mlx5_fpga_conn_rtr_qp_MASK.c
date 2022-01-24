#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mqp; int /*<<< orphan*/  sgid_index; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; int /*<<< orphan*/ * fpga_qpc; int /*<<< orphan*/  fpga_qpn; struct mlx5_fpga_device* fdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rgid_rip; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  src_addr_index; int /*<<< orphan*/  udp_sport; int /*<<< orphan*/  rmac_47_32; int /*<<< orphan*/  vhca_port_num; int /*<<< orphan*/  pkey_index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CMD_OP_INIT2RTR_QP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FPGA_PKEY_INDEX ; 
 int /*<<< orphan*/  MLX5_FPGA_PORT_NUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_QPC_MTU_1K_BYTES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fpga_ip ; 
 int /*<<< orphan*/  fpga_mac_47_32 ; 
 int /*<<< orphan*/ * fpga_qpc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_msg ; 
 int /*<<< orphan*/  log_msg_max ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_fpga_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_fpga_device*,char*,int) ; 
 int /*<<< orphan*/  mtu ; 
 int /*<<< orphan*/  next_rcv_psn ; 
 int /*<<< orphan*/  next_send_psn ; 
 TYPE_2__ primary_address_path ; 
 int /*<<< orphan*/  r_roce_min_src_udp_port ; 
 int /*<<< orphan*/  remote_qpn ; 

__attribute__((used)) static inline int FUNC14(struct mlx5_fpga_conn *conn)
{
	struct mlx5_fpga_device *fdev = conn->fdev;
	struct mlx5_core_dev *mdev = fdev->mdev;
	u32 *qpc = NULL;
	int err;

	FUNC12(conn->fdev, "QP RTR\n");

	qpc = FUNC9(FUNC6(qpc), GFP_KERNEL);
	if (!qpc) {
		err = -ENOMEM;
		goto out;
	}

	FUNC5(qpc, qpc, mtu, MLX5_QPC_MTU_1K_BYTES);
	FUNC5(qpc, qpc, log_msg_max, (u8)FUNC1(mdev, log_max_msg));
	FUNC5(qpc, qpc, remote_qpn, conn->fpga_qpn);
	FUNC5(qpc, qpc, next_rcv_psn,
		 FUNC4(fpga_qpc, conn->fpga_qpc, next_send_psn));
	FUNC5(qpc, qpc, primary_address_path.pkey_index, MLX5_FPGA_PKEY_INDEX);
	FUNC5(qpc, qpc, primary_address_path.vhca_port_num, MLX5_FPGA_PORT_NUM);
	FUNC7(FUNC0(qpc, qpc, primary_address_path.rmac_47_32),
			FUNC0(fpga_qpc, conn->fpga_qpc, fpga_mac_47_32));
	FUNC5(qpc, qpc, primary_address_path.udp_sport,
		 FUNC2(mdev, r_roce_min_src_udp_port));
	FUNC5(qpc, qpc, primary_address_path.src_addr_index,
		 conn->qp.sgid_index);
	FUNC5(qpc, qpc, primary_address_path.hop_limit, 0);
	FUNC10(FUNC0(qpc, qpc, primary_address_path.rgid_rip),
	       FUNC0(fpga_qpc, conn->fpga_qpc, fpga_ip),
	       FUNC3(qpc, primary_address_path.rgid_rip));

	err = FUNC11(mdev, MLX5_CMD_OP_INIT2RTR_QP, 0, qpc,
				  &conn->qp.mqp);
	if (err) {
		FUNC13(fdev, "qp_modify RST2INIT failed: %d\n", err);
		goto out;
	}

out:
	FUNC8(qpc);
	return err;
}