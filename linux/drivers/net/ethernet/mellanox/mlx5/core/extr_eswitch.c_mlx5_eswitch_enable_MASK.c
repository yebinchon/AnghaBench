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
struct TYPE_2__ {int /*<<< orphan*/  num_vfs; } ;
struct mlx5_eswitch {int mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  enabled_vports; TYPE_1__ esw_funcs; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_ESWITCH_LEGACY ; 
 int MLX5_ESWITCH_NONE ; 
 int MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_ETH ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_IB ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_eswitch*) ; 
 int FUNC7 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ft_support ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct mlx5_eswitch *esw, int mode)
{
	int err;

	if (!FUNC0(esw) ||
	    !FUNC2(esw->dev, ft_support)) {
		FUNC8(esw->dev, "FDB is not supported, aborting ...\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC3(esw->dev, ft_support))
		FUNC8(esw->dev, "ingress ACL is not supported by FW\n");

	if (!FUNC1(esw->dev, ft_support))
		FUNC8(esw->dev, "engress ACL is not supported by FW\n");

	FUNC4(esw);

	esw->mode = mode;

	FUNC10(esw->dev);

	if (mode == MLX5_ESWITCH_LEGACY) {
		err = FUNC6(esw);
	} else {
		FUNC11(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
		FUNC11(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
		err = FUNC7(esw);
	}

	if (err)
		goto abort;

	FUNC9(esw);

	FUNC5(esw->dev, "Enable: mode(%s), nvfs(%d), active vports(%d)\n",
		 mode == MLX5_ESWITCH_LEGACY ? "LEGACY" : "OFFLOADS",
		 esw->esw_funcs.num_vfs, esw->enabled_vports);

	return 0;

abort:
	esw->mode = MLX5_ESWITCH_NONE;

	if (mode == MLX5_ESWITCH_OFFLOADS) {
		FUNC11(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
		FUNC11(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
	}

	return err;
}