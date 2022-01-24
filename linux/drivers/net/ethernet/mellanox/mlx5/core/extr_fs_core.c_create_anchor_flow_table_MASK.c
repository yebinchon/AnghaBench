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
struct mlx5_flow_table_attr {int /*<<< orphan*/  prio; int /*<<< orphan*/  level; int /*<<< orphan*/  max_fte; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_steering {int /*<<< orphan*/  dev; } ;
struct mlx5_flow_namespace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANCHOR_LEVEL ; 
 int /*<<< orphan*/  ANCHOR_PRIO ; 
 int /*<<< orphan*/  ANCHOR_SIZE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_ANCHOR ; 
 int FUNC1 (struct mlx5_flow_table*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct mlx5_flow_table* FUNC4 (struct mlx5_flow_namespace*,struct mlx5_flow_table_attr*) ; 
 struct mlx5_flow_namespace* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx5_flow_steering *steering)
{
	struct mlx5_flow_namespace *ns = NULL;
	struct mlx5_flow_table_attr ft_attr = {};
	struct mlx5_flow_table *ft;

	ns = FUNC5(steering->dev, MLX5_FLOW_NAMESPACE_ANCHOR);
	if (FUNC2(!ns))
		return -EINVAL;

	ft_attr.max_fte = ANCHOR_SIZE;
	ft_attr.level   = ANCHOR_LEVEL;
	ft_attr.prio    = ANCHOR_PRIO;

	ft = FUNC4(ns, &ft_attr);
	if (FUNC0(ft)) {
		FUNC3(steering->dev, "Failed to create last anchor flow table");
		return FUNC1(ft);
	}
	return 0;
}