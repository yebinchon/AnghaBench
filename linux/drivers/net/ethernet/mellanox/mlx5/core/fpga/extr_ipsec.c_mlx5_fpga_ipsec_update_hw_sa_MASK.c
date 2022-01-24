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
struct TYPE_3__ {scalar_t__ sw_sa_handle; int /*<<< orphan*/  cmd; } ;
struct mlx5_ifc_fpga_ipsec_sa {TYPE_1__ ipsec_sa_v1; } ;
struct TYPE_4__ {scalar_t__ sw_sa_handle; } ;
struct mlx5_fpga_ipsec_cmd_context {TYPE_2__ resp; int /*<<< orphan*/  command; } ;
struct mlx5_fpga_device {int /*<<< orphan*/  ipsec; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int FUNC1 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*,struct mlx5_ifc_fpga_ipsec_sa*,size_t) ; 
 int FUNC7 (struct mlx5_fpga_ipsec_cmd_context*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct mlx5_fpga_device *fdev,
					struct mlx5_ifc_fpga_ipsec_sa *hw_sa,
					int opcode)
{
	struct mlx5_core_dev *dev = fdev->mdev;
	struct mlx5_ifc_fpga_ipsec_sa *sa;
	struct mlx5_fpga_ipsec_cmd_context *cmd_context;
	size_t sa_cmd_size;
	int err;

	hw_sa->ipsec_sa_v1.cmd = FUNC2(opcode);
	if (FUNC3(fdev->ipsec))
		sa_cmd_size = sizeof(*hw_sa);
	else
		sa_cmd_size = sizeof(hw_sa->ipsec_sa_v1);

	cmd_context = (struct mlx5_fpga_ipsec_cmd_context *)
			FUNC6(dev, hw_sa, sa_cmd_size);
	if (FUNC0(cmd_context))
		return FUNC1(cmd_context);

	err = FUNC7(cmd_context);
	if (err)
		goto out;

	sa = (struct mlx5_ifc_fpga_ipsec_sa *)&cmd_context->command;
	if (sa->ipsec_sa_v1.sw_sa_handle != cmd_context->resp.sw_sa_handle) {
		FUNC5(fdev, "mismatch SA handle. cmd 0x%08x vs resp 0x%08x\n",
			      FUNC8(sa->ipsec_sa_v1.sw_sa_handle),
			      FUNC8(cmd_context->resp.sw_sa_handle));
		err = -EIO;
	}

out:
	FUNC4(cmd_context);
	return err;
}