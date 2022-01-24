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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int /*<<< orphan*/  initializing; } ;

/* Variables and functions */
 int MLX5_FW_RESET_SUPPORTED_OFFSET ; 
 int /*<<< orphan*/  MLX5_NIC_IFC_SW_RESET ; 
 scalar_t__ MLX5_SENSOR_NIC_DISABLED ; 
 scalar_t__ MLX5_SENSOR_NIC_SW_RESET ; 
 scalar_t__ MLX5_SENSOR_PCI_COMM_ERR ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct mlx5_core_dev *dev)
{
	bool supported = (FUNC1(&dev->iseg->initializing) >>
			  MLX5_FW_RESET_SUPPORTED_OFFSET) & 1;
	u32 fatal_error;

	if (!supported)
		return false;

	/* The reset only needs to be issued by one PF. The health buffer is
	 * shared between all functions, and will be cleared during a reset.
	 * Check again to avoid a redundant 2nd reset. If the fatal erros was
	 * PCI related a reset won't help.
	 */
	fatal_error = FUNC0(dev);
	if (fatal_error == MLX5_SENSOR_PCI_COMM_ERR ||
	    fatal_error == MLX5_SENSOR_NIC_DISABLED ||
	    fatal_error == MLX5_SENSOR_NIC_SW_RESET) {
		FUNC2(dev, "Not issuing FW reset. Either it's already done or won't help.");
		return false;
	}

	FUNC2(dev, "Issuing FW Reset\n");
	/* Write the NIC interface field to initiate the reset, the command
	 * interface address also resides here, don't overwrite it.
	 */
	FUNC3(dev, MLX5_NIC_IFC_SW_RESET);

	return true;
}