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
struct mlx5_eswitch {scalar_t__ mode; int /*<<< orphan*/  dev; int /*<<< orphan*/  enabled_vports; TYPE_1__ esw_funcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 scalar_t__ MLX5_ESWITCH_NONE ; 
 int MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_ETH ; 
 int /*<<< orphan*/  MLX5_INTERFACE_PROTOCOL_IB ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct mlx5_eswitch *esw)
{
	int old_mode;

	if (!FUNC0(esw) || esw->mode == MLX5_ESWITCH_NONE)
		return;

	FUNC2(esw->dev, "Disable: mode(%s), nvfs(%d), active vports(%d)\n",
		 esw->mode == MLX5_ESWITCH_LEGACY ? "LEGACY" : "OFFLOADS",
		 esw->esw_funcs.num_vfs, esw->enabled_vports);

	FUNC5(esw);

	if (esw->mode == MLX5_ESWITCH_LEGACY)
		FUNC3(esw);
	else if (esw->mode == MLX5_ESWITCH_OFFLOADS)
		FUNC4(esw);

	FUNC1(esw);

	old_mode = esw->mode;
	esw->mode = MLX5_ESWITCH_NONE;

	FUNC6(esw->dev);

	if (old_mode == MLX5_ESWITCH_OFFLOADS) {
		FUNC7(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
		FUNC7(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
	}
}