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
struct mlx5_dm {struct mlx5_dm* header_modify_sw_icm_alloc_blocks; struct mlx5_dm* steering_sw_icm_alloc_blocks; } ;
struct mlx5_core_dev {struct mlx5_dm* dm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_dm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_dm*) ; 
 int /*<<< orphan*/  log_header_modify_sw_icm_size ; 
 int /*<<< orphan*/  log_steering_sw_icm_size ; 

void FUNC6(struct mlx5_core_dev *dev)
{
	struct mlx5_dm *dm = dev->dm;

	if (!dev->dm)
		return;

	if (dm->steering_sw_icm_alloc_blocks) {
		FUNC3(!FUNC4(dm->steering_sw_icm_alloc_blocks,
				      FUNC0(FUNC1(dev, log_steering_sw_icm_size) -
					  FUNC2(dev))));
		FUNC5(dm->steering_sw_icm_alloc_blocks);
	}

	if (dm->header_modify_sw_icm_alloc_blocks) {
		FUNC3(!FUNC4(dm->header_modify_sw_icm_alloc_blocks,
				      FUNC0(FUNC1(dev,
							   log_header_modify_sw_icm_size) -
				      FUNC2(dev))));
		FUNC5(dm->header_modify_sw_icm_alloc_blocks);
	}

	FUNC5(dm);
}