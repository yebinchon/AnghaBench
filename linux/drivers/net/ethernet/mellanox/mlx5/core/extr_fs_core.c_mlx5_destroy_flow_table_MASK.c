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
struct mlx5_flow_table {int /*<<< orphan*/  id; int /*<<< orphan*/  node; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  chain_lock; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_flow_table*) ; 
 struct mlx5_flow_root_namespace* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(struct mlx5_flow_table *ft)
{
	struct mlx5_flow_root_namespace *root = FUNC1(&ft->node);
	int err = 0;

	FUNC4(&root->chain_lock);
	err = FUNC0(ft);
	if (err) {
		FUNC5(&root->chain_lock);
		return err;
	}
	if (FUNC6(&ft->node, false))
		FUNC3(FUNC2(&ft->node), "Flow table %d wasn't destroyed, refcount > 1\n",
			       ft->id);
	FUNC5(&root->chain_lock);

	return err;
}