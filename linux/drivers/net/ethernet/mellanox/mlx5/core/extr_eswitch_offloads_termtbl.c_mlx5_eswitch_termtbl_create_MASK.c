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
struct mlx5_termtbl_handle {int /*<<< orphan*/  termtbl; int /*<<< orphan*/  rule; int /*<<< orphan*/  dest; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct mlx5_flow_act {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FDB_SLOW_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_FDB ; 
 int MLX5_FLOW_TABLE_TERMINATION ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx5_flow_spec const*,struct mlx5_flow_act*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_namespace*,int,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mlx5_core_dev *dev,
			    struct mlx5_termtbl_handle *tt,
			    struct mlx5_flow_act *flow_act)
{
	static const struct mlx5_flow_spec spec = {};
	struct mlx5_flow_namespace *root_ns;
	int prio, flags;
	int err;

	root_ns = FUNC5(dev, MLX5_FLOW_NAMESPACE_FDB);
	if (!root_ns) {
		FUNC1(dev, "Failed to get FDB flow namespace\n");
		return -EOPNOTSUPP;
	}

	/* As this is the terminating action then the termination table is the
	 * same prio as the slow path
	 */
	prio = FDB_SLOW_PATH;
	flags = MLX5_FLOW_TABLE_TERMINATION;
	tt->termtbl = FUNC3(root_ns, prio, 1, 1,
							  0, flags);
	if (FUNC0(tt->termtbl)) {
		FUNC1(dev, "Failed to create termination table\n");
		return -EOPNOTSUPP;
	}

	tt->rule = FUNC2(tt->termtbl, &spec, flow_act,
				       &tt->dest, 1);

	if (FUNC0(tt->rule)) {
		FUNC1(dev, "Failed to create termination table rule\n");
		goto add_flow_err;
	}
	return 0;

add_flow_err:
	err = FUNC4(tt->termtbl);
	if (err)
		FUNC1(dev, "Failed to destroy termination table\n");

	return -EOPNOTSUPP;
}