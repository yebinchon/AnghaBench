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
struct mlx5_fpga_device {int /*<<< orphan*/  state; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_FPGA_STATUS_NONE ; 
 struct mlx5_fpga_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_fpga_device *FUNC2(void)
{
	struct mlx5_fpga_device *fdev = NULL;

	fdev = FUNC0(sizeof(*fdev), GFP_KERNEL);
	if (!fdev)
		return NULL;

	FUNC1(&fdev->state_lock);
	fdev->state = MLX5_FPGA_STATUS_NONE;
	return fdev;
}