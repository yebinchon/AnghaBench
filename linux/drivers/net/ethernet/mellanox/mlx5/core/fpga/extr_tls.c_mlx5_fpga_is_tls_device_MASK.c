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
struct mlx5_core_dev {int /*<<< orphan*/  fpga; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_TLS ; 
 scalar_t__ MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX ; 
 int /*<<< orphan*/  fpga ; 
 int /*<<< orphan*/  ieee_vendor_id ; 
 int /*<<< orphan*/  sandbox_product_id ; 
 int /*<<< orphan*/  sandbox_product_version ; 

bool FUNC2(struct mlx5_core_dev *mdev)
{
	if (!mdev->fpga || !FUNC1(mdev, fpga))
		return false;

	if (FUNC0(mdev, ieee_vendor_id) !=
	    MLX5_FPGA_CAP_SANDBOX_VENDOR_ID_MLNX)
		return false;

	if (FUNC0(mdev, sandbox_product_id) !=
	    MLX5_FPGA_CAP_SANDBOX_PRODUCT_ID_TLS)
		return false;

	if (FUNC0(mdev, sandbox_product_version) != 0)
		return false;

	return true;
}