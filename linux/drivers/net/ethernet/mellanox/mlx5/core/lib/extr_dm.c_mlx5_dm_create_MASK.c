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
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_dm {struct mlx5_dm* steering_sw_icm_alloc_blocks; void* header_modify_sw_icm_alloc_blocks; int /*<<< orphan*/  lock; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_dm* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  general_obj_types ; 
 int /*<<< orphan*/  header_modify_sw_icm_start_address ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_dm*) ; 
 struct mlx5_dm* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_header_modify_sw_icm_size ; 
 int /*<<< orphan*/  log_steering_sw_icm_size ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  steering_sw_icm_start_address ; 

struct mlx5_dm *FUNC11(struct mlx5_core_dev *dev)
{
	u64 header_modify_icm_blocks = 0;
	u64 steering_icm_blocks = 0;
	struct mlx5_dm *dm;

	if (!(FUNC5(dev, general_obj_types) & MLX5_GENERAL_OBJ_TYPES_CAP_SW_ICM))
		return 0;

	dm = FUNC9(sizeof(*dm), GFP_KERNEL);
	if (!dm)
		return FUNC2(-ENOMEM);

	FUNC10(&dm->lock);

	if (FUNC3(dev, steering_sw_icm_start_address)) {
		steering_icm_blocks =
			FUNC0(FUNC4(dev, log_steering_sw_icm_size) -
			    FUNC6(dev));

		dm->steering_sw_icm_alloc_blocks =
			FUNC7(FUNC1(steering_icm_blocks),
				sizeof(unsigned long), GFP_KERNEL);
		if (!dm->steering_sw_icm_alloc_blocks)
			goto err_steering;
	}

	if (FUNC3(dev, header_modify_sw_icm_start_address)) {
		header_modify_icm_blocks =
			FUNC0(FUNC4(dev, log_header_modify_sw_icm_size) -
			    FUNC6(dev));

		dm->header_modify_sw_icm_alloc_blocks =
			FUNC7(FUNC1(header_modify_icm_blocks),
				sizeof(unsigned long), GFP_KERNEL);
		if (!dm->header_modify_sw_icm_alloc_blocks)
			goto err_modify_hdr;
	}

	return dm;

err_modify_hdr:
	FUNC8(dm->steering_sw_icm_alloc_blocks);

err_steering:
	FUNC8(dm);

	return FUNC2(-ENOMEM);
}