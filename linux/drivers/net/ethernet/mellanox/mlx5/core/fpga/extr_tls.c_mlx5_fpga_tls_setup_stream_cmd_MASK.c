#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct TYPE_5__ {struct mlx5_fpga_dma_buf buf; } ;
struct mlx5_setup_stream_context {int syndrome; TYPE_2__ cmd; int /*<<< orphan*/  status; int /*<<< orphan*/  comp; } ;
struct mlx5_core_dev {int /*<<< orphan*/  fpga; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SETUP_STREAM ; 
 int EINTR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MLX5_FPGA_CMD_ABANDONED ; 
 int MLX5_FPGA_CMD_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_TLS_COMMAND_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  command_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  mlx5_fpga_tls_setup_completion ; 
 int /*<<< orphan*/  tls_cmd ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mlx5_core_dev *mdev,
					  struct mlx5_setup_stream_context *ctx)
{
	struct mlx5_fpga_dma_buf *buf;
	void *cmd = ctx + 1;
	int status, ret = 0;

	buf = &ctx->cmd.buf;
	buf->sg[0].data = cmd;
	buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;
	FUNC0(tls_cmd, cmd, command_type, CMD_SETUP_STREAM);

	FUNC3(&ctx->comp);
	FUNC1(&ctx->status, MLX5_FPGA_CMD_PENDING);
	ctx->syndrome = -1;

	FUNC4(mdev->fpga, &ctx->cmd,
			       mlx5_fpga_tls_setup_completion);
	FUNC7(&ctx->comp);

	status = FUNC2(&ctx->status, MLX5_FPGA_CMD_ABANDONED);
	if (FUNC6(status == MLX5_FPGA_CMD_PENDING))
	/* ctx is going to be released in mlx5_fpga_tls_setup_completion */
		return -EINTR;

	if (FUNC6(ctx->syndrome))
		ret = -ENOMEM;

	FUNC5(&ctx->cmd);
	return ret;
}