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
struct mlx5_flow_table_attr {scalar_t__ max_fte; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct TYPE_2__ {struct mlx5_flow_table* ft_offloads; } ;
struct mlx5_eswitch {TYPE_1__ offloads; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct mlx5_flow_table*) ; 
 scalar_t__ MLX5_ESW_MISS_FLOWS ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_OFFLOADS ; 
 int FUNC1 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,...) ; 
 struct mlx5_flow_table* FUNC3 (struct mlx5_flow_namespace*,struct mlx5_flow_table_attr*) ; 
 struct mlx5_flow_namespace* FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5_eswitch *esw, int nvports)
{
	struct mlx5_flow_table_attr ft_attr = {};
	struct mlx5_core_dev *dev = esw->dev;
	struct mlx5_flow_table *ft_offloads;
	struct mlx5_flow_namespace *ns;
	int err = 0;

	ns = FUNC4(dev, MLX5_FLOW_NAMESPACE_OFFLOADS);
	if (!ns) {
		FUNC2(esw->dev, "Failed to get offloads flow namespace\n");
		return -EOPNOTSUPP;
	}

	ft_attr.max_fte = nvports + MLX5_ESW_MISS_FLOWS;

	ft_offloads = FUNC3(ns, &ft_attr);
	if (FUNC0(ft_offloads)) {
		err = FUNC1(ft_offloads);
		FUNC2(esw->dev, "Failed to create offloads table, err %d\n", err);
		return err;
	}

	esw->offloads.ft_offloads = ft_offloads;
	return 0;
}