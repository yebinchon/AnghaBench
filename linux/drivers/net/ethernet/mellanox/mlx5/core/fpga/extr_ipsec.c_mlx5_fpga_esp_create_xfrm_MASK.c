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
typedef  int u32 ;
struct mlx5_accel_esp_xfrm {int /*<<< orphan*/  attrs; } ;
struct mlx5_fpga_esp_xfrm {struct mlx5_accel_esp_xfrm accel_xfrm; int /*<<< orphan*/  lock; } ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_accel_esp_xfrm_attrs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct mlx5_accel_esp_xfrm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA ; 
 struct mlx5_fpga_esp_xfrm* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mlx5_accel_esp_xfrm_attrs const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*,struct mlx5_accel_esp_xfrm_attrs const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mlx5_accel_esp_xfrm *
FUNC6(struct mlx5_core_dev *mdev,
			  const struct mlx5_accel_esp_xfrm_attrs *attrs,
			  u32 flags)
{
	struct mlx5_fpga_esp_xfrm *fpga_xfrm;

	if (!(flags & MLX5_ACCEL_XFRM_FLAG_REQUIRE_METADATA)) {
		FUNC3(mdev, "Tried to create an esp action without metadata\n");
		return FUNC0(-EINVAL);
	}

	if (FUNC4(mdev, attrs)) {
		FUNC3(mdev, "Tried to create an esp with unsupported attrs\n");
		return FUNC0(-EOPNOTSUPP);
	}

	fpga_xfrm = FUNC1(sizeof(*fpga_xfrm), GFP_KERNEL);
	if (!fpga_xfrm)
		return FUNC0(-ENOMEM);

	FUNC5(&fpga_xfrm->lock);
	FUNC2(&fpga_xfrm->accel_xfrm.attrs, attrs,
	       sizeof(fpga_xfrm->accel_xfrm.attrs));

	return &fpga_xfrm->accel_xfrm;
}