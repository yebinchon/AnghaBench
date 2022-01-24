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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_dma_buf {int /*<<< orphan*/  complete; TYPE_1__* sg; } ;
struct mlx5_core_dev {TYPE_3__* fpga; } ;
struct TYPE_6__ {TYPE_2__* tls; } ;
struct TYPE_5__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  rx_idr; } ;
struct TYPE_4__ {int size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESYNC_RX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_TLS_COMMAND_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  command_type ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_dma_buf*) ; 
 struct mlx5_fpga_dma_buf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mlx5_fpga_dma_buf*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*) ; 
 int /*<<< orphan*/  mlx_tls_kfree_complete ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  swid ; 
 int /*<<< orphan*/  tcp_sn ; 
 int /*<<< orphan*/  tls_cmd ; 
 int /*<<< orphan*/  tls_rcd_sn ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct mlx5_core_dev *mdev, u32 handle, u32 seq,
			    u64 rcd_sn)
{
	struct mlx5_fpga_dma_buf *buf;
	int size = sizeof(*buf) + MLX5_TLS_COMMAND_SIZE;
	void *flow;
	void *cmd;
	int ret;

	buf = FUNC6(size, GFP_ATOMIC);
	if (!buf)
		return -ENOMEM;

	cmd = (buf + 1);

	FUNC10();
	flow = FUNC4(&mdev->fpga->tls->rx_idr, FUNC9(handle));
	if (FUNC12(!flow)) {
		FUNC11();
		FUNC2(1, "Received NULL pointer for handle\n");
		FUNC5(buf);
		return -EINVAL;
	}
	FUNC8(flow, cmd);
	FUNC11();

	FUNC0(tls_cmd, cmd, swid, FUNC9(handle));
	FUNC1(tls_cmd, cmd, tls_rcd_sn, FUNC3(rcd_sn));
	FUNC0(tls_cmd, cmd, tcp_sn, seq);
	FUNC0(tls_cmd, cmd, command_type, CMD_RESYNC_RX);

	buf->sg[0].data = cmd;
	buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;
	buf->complete = mlx_tls_kfree_complete;

	ret = FUNC7(mdev->fpga->tls->conn, buf);
	if (ret < 0)
		FUNC5(buf);

	return ret;
}