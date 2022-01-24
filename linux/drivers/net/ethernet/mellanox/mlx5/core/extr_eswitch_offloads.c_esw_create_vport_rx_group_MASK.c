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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_group {int dummy; } ;
struct TYPE_2__ {struct mlx5_flow_group* vport_rx_group; int /*<<< orphan*/  ft_offloads; } ;
struct mlx5_eswitch {TYPE_1__ offloads; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_flow_group*) ; 
 int MLX5_ESW_MISS_FLOWS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_eswitch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 struct mlx5_flow_group* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int FUNC9(struct mlx5_eswitch *esw, int nvports)
{
	int inlen = FUNC2(create_flow_group_in);
	struct mlx5_flow_group *g;
	u32 *flow_group_in;
	int err = 0;

	nvports = nvports + MLX5_ESW_MISS_FLOWS;
	flow_group_in = FUNC6(inlen, GFP_KERNEL);
	if (!flow_group_in)
		return -ENOMEM;

	/* create vport rx group */
	FUNC4(esw, flow_group_in);

	FUNC1(create_flow_group_in, flow_group_in, start_flow_index, 0);
	FUNC1(create_flow_group_in, flow_group_in, end_flow_index, nvports - 1);

	g = FUNC8(esw->offloads.ft_offloads, flow_group_in);

	if (FUNC0(g)) {
		err = FUNC3(g);
		FUNC7(esw->dev, "Failed to create vport rx group err %d\n", err);
		goto out;
	}

	esw->offloads.vport_rx_group = g;
out:
	FUNC5(flow_group_in);
	return err;
}