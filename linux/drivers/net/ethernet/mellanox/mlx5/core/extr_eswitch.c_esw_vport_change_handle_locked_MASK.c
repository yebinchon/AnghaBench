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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_vport {int enabled_events; int /*<<< orphan*/  vport; scalar_t__ enabled; int /*<<< orphan*/  allmulti_rule; struct mlx5_core_dev* dev; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct mlx5_eswitch* eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_NVPRT_LIST_TYPE_MC ; 
 int /*<<< orphan*/  MLX5_NVPRT_LIST_TYPE_UC ; 
 int MLX5_VPORT_MC_ADDR_CHANGE ; 
 int MLX5_VPORT_PROMISC_CHANGE ; 
 int MLX5_VPORT_UC_ADDR_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*,struct mlx5_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*,struct mlx5_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mlx5_vport *vport)
{
	struct mlx5_core_dev *dev = vport->dev;
	struct mlx5_eswitch *esw = dev->priv.eswitch;
	u8 mac[ETH_ALEN];

	FUNC7(dev, vport->vport, true, mac);
	FUNC3(dev, "vport[%d] Context Changed: perm mac: %pM\n",
		  vport->vport, mac);

	if (vport->enabled_events & MLX5_VPORT_UC_ADDR_CHANGE) {
		FUNC4(esw, vport, MLX5_NVPRT_LIST_TYPE_UC);
		FUNC2(esw, vport, MLX5_NVPRT_LIST_TYPE_UC);
	}

	if (vport->enabled_events & MLX5_VPORT_MC_ADDR_CHANGE)
		FUNC4(esw, vport, MLX5_NVPRT_LIST_TYPE_MC);

	if (vport->enabled_events & MLX5_VPORT_PROMISC_CHANGE) {
		FUNC6(esw, vport);
		if (!FUNC0(vport->allmulti_rule))
			FUNC5(esw, vport);
	}

	if (vport->enabled_events & (MLX5_VPORT_PROMISC_CHANGE | MLX5_VPORT_MC_ADDR_CHANGE))
		FUNC2(esw, vport, MLX5_NVPRT_LIST_TYPE_MC);

	FUNC3(esw->dev, "vport[%d] Context Changed: Done\n", vport->vport);
	if (vport->enabled)
		FUNC1(dev, vport->vport,
					     vport->enabled_events);
}