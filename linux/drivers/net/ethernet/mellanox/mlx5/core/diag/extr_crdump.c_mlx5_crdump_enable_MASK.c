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
struct TYPE_2__ {scalar_t__ crdump_size; } ;
struct mlx5_priv {TYPE_1__ health; } ;
struct mlx5_core_dev {struct mlx5_priv priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX5_VSC_SPACE_SCAN_CRSPACE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC6 (struct mlx5_core_dev*) ; 

int FUNC7(struct mlx5_core_dev *dev)
{
	struct mlx5_priv *priv = &dev->priv;
	u32 space_size;
	int ret;

	if (!FUNC0(dev) || !FUNC3(dev) ||
	    FUNC2(dev))
		return 0;

	ret = FUNC4(dev);
	if (ret)
		return ret;

	/* Check if space is supported and get space size */
	ret = FUNC5(dev, MLX5_VSC_SPACE_SCAN_CRSPACE,
				    &space_size);
	if (ret) {
		/* Unlock and mask error since space is not supported */
		FUNC6(dev);
		return 0;
	}

	if (!space_size) {
		FUNC1(dev, "Invalid Crspace size, zero\n");
		FUNC6(dev);
		return -EINVAL;
	}

	ret = FUNC6(dev);
	if (ret)
		return ret;

	priv->health.crdump_size = space_size;
	return 0;
}