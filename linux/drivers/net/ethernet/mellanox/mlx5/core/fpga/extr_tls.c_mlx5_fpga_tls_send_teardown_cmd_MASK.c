#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_dma_buf {TYPE_1__* sg; } ;
struct mlx5_fpga_tls_command_context {struct mlx5_fpga_dma_buf buf; } ;
struct mlx5_core_dev {int /*<<< orphan*/  fpga; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {scalar_t__ size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEARDOWN_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_TLS_COMMAND_SIZE ; 
 int /*<<< orphan*/  command_type ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct mlx5_fpga_tls_command_context* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlx5_fpga_tls_command_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int /*<<< orphan*/  mlx5_fpga_tls_teardown_completion ; 
 int /*<<< orphan*/  tls_cmd ; 

__attribute__((used)) static void FUNC5(struct mlx5_core_dev *mdev,
					    void *flow, u32 swid, gfp_t flags)
{
	struct mlx5_fpga_tls_command_context *ctx;
	struct mlx5_fpga_dma_buf *buf;
	void *cmd;

	ctx = FUNC2(sizeof(*ctx) + MLX5_TLS_COMMAND_SIZE, flags);
	if (!ctx)
		return;

	buf = &ctx->buf;
	cmd = (ctx + 1);
	FUNC0(tls_cmd, cmd, command_type, CMD_TEARDOWN_STREAM);
	FUNC0(tls_cmd, cmd, swid, swid);

	FUNC4(flow, cmd);
	FUNC1(flow);

	buf->sg[0].data = cmd;
	buf->sg[0].size = MLX5_TLS_COMMAND_SIZE;

	FUNC3(mdev->fpga, ctx,
			       mlx5_fpga_tls_teardown_completion);
}