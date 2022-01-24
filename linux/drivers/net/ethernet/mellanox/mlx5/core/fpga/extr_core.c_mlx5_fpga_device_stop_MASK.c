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
struct mlx5_fpga_device {scalar_t__ state; scalar_t__ last_oper_image; int /*<<< orphan*/  fpga_qp_err_nb; int /*<<< orphan*/  mdev; int /*<<< orphan*/  fpga_err_nb; int /*<<< orphan*/  state_lock; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_num_qps; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON ; 
 scalar_t__ MLX5_FPGA_IMAGE_USER ; 
 scalar_t__ MLX5_FPGA_STATUS_NONE ; 
 scalar_t__ MLX5_FPGA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_device*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_fpga_device*,char*,int) ; 
 TYPE_1__ shell_caps ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	unsigned int max_num_qps;
	unsigned long flags;
	int err;

	if (!fdev)
		return;

	FUNC6(&fdev->state_lock, flags);
	if (fdev->state != MLX5_FPGA_STATUS_SUCCESS) {
		FUNC7(&fdev->state_lock, flags);
		return;
	}
	fdev->state = MLX5_FPGA_STATUS_NONE;
	FUNC7(&fdev->state_lock, flags);

	if (fdev->last_oper_image == MLX5_FPGA_IMAGE_USER) {
		err = FUNC4(mdev, MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON);
		if (err)
			FUNC5(fdev, "Failed to re-set SBU bypass on: %d\n",
				      err);
	}

	FUNC3(fdev);
	FUNC2(fdev->mdev, &fdev->fpga_err_nb);
	FUNC2(fdev->mdev, &fdev->fpga_qp_err_nb);

	max_num_qps = FUNC0(mdev, shell_caps.max_num_qps);
	FUNC1(mdev, max_num_qps);
}