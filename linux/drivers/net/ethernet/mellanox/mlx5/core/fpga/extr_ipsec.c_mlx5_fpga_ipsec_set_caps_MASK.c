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
struct mlx5_ifc_fpga_ipsec_cmd_cap {int flags; void* cmd; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int flags; } ;
struct mlx5_fpga_ipsec_cmd_context {TYPE_1__ resp; int /*<<< orphan*/  dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int /*<<< orphan*/  MLX5_FPGA_IPSEC_CMD_OP_SET_CAP ; 
 int FUNC1 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct mlx5_fpga_ipsec_cmd_context* FUNC5 (struct mlx5_core_dev*,struct mlx5_ifc_fpga_ipsec_cmd_cap*,int) ; 
 int FUNC6 (struct mlx5_fpga_ipsec_cmd_context*) ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *mdev, u32 flags)
{
	struct mlx5_fpga_ipsec_cmd_context *context;
	struct mlx5_ifc_fpga_ipsec_cmd_cap cmd = {0};
	int err;

	cmd.cmd = FUNC2(MLX5_FPGA_IPSEC_CMD_OP_SET_CAP);
	cmd.flags = FUNC2(flags);
	context = FUNC5(mdev, &cmd, sizeof(cmd));
	if (FUNC0(context))
		return FUNC1(context);

	err = FUNC6(context);
	if (err)
		goto out;

	if ((context->resp.flags & cmd.flags) != cmd.flags) {
		FUNC4(context->dev, "Failed to set capabilities. cmd 0x%08x vs resp 0x%08x\n",
			      cmd.flags,
			      context->resp.flags);
		err = -EIO;
	}

out:
	FUNC3(context);
	return err;
}