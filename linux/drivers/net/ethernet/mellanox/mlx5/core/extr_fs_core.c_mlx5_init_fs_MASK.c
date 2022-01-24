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
struct mlx5_flow_steering {void* fgs_cache; void* ftes_cache; struct mlx5_core_dev* dev; } ;
struct mlx5_flow_group {int dummy; } ;
struct TYPE_2__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;
struct fs_fte {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ; 
 scalar_t__ FUNC9 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  ft_support ; 
 int FUNC11 (struct mlx5_core_dev*) ; 
 int FUNC12 (struct mlx5_flow_steering*) ; 
 int FUNC13 (struct mlx5_flow_steering*) ; 
 int FUNC14 (struct mlx5_core_dev*) ; 
 int FUNC15 (struct mlx5_flow_steering*) ; 
 int FUNC16 (struct mlx5_flow_steering*) ; 
 int FUNC17 (struct mlx5_flow_steering*) ; 
 int FUNC18 (struct mlx5_flow_steering*) ; 
 int /*<<< orphan*/  ipoib_enhanced_offloads ; 
 void* FUNC19 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_steering* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx5_core_dev*) ; 
 int FUNC22 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  nic_flow_table ; 
 int /*<<< orphan*/  port_type ; 
 int /*<<< orphan*/  table_miss_action_domain ; 

int FUNC23(struct mlx5_core_dev *dev)
{
	struct mlx5_flow_steering *steering;
	int err = 0;

	err = FUNC22(dev);
	if (err)
		return err;

	steering = FUNC20(sizeof(*steering), GFP_KERNEL);
	if (!steering)
		return -ENOMEM;
	steering->dev = dev;
	dev->priv.steering = steering;

	steering->fgs_cache = FUNC19("mlx5_fs_fgs",
						sizeof(struct mlx5_flow_group), 0,
						0, NULL);
	steering->ftes_cache = FUNC19("mlx5_fs_ftes", sizeof(struct fs_fte), 0,
						 0, NULL);
	if (!steering->ftes_cache || !steering->fgs_cache) {
		err = -ENOMEM;
		goto err;
	}

	if ((((FUNC8(dev, port_type) == MLX5_CAP_PORT_TYPE_ETH) &&
	      (FUNC8(dev, nic_flow_table))) ||
	     ((FUNC8(dev, port_type) == MLX5_CAP_PORT_TYPE_IB) &&
	      FUNC8(dev, ipoib_enhanced_offloads))) &&
	    FUNC3(dev, ft_support)) {
		err = FUNC16(steering);
		if (err)
			goto err;
	}

	if (FUNC9(dev)) {
		if (FUNC1(dev, ft_support)) {
			err = FUNC13(steering);
			if (err)
				goto err;
		}
		if (FUNC0(dev, ft_support)) {
			err = FUNC11(dev);
			if (err)
				goto err;
		}
		if (FUNC2(dev, ft_support)) {
			err = FUNC14(dev);
			if (err)
				goto err;
		}
	}

	if (FUNC6(dev, ft_support)) {
		err = FUNC17(steering);
		if (err)
			goto err;
	}

	if (FUNC7(dev, ft_support)) {
		err = FUNC18(steering);
		if (err)
			goto err;
	}

	if (FUNC5(dev, ft_support) &&
	    FUNC5(dev, table_miss_action_domain)) {
		err = FUNC15(steering);
		if (err)
			goto err;
	}

	if (FUNC10(dev) || FUNC4(dev, ft_support)) {
		err = FUNC12(steering);
		if (err)
			goto err;
	}

	return 0;
err:
	FUNC21(dev);
	return err;
}