#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;
struct mlx5_flow_group {TYPE_1__ node; int /*<<< orphan*/  ftes_hash; } ;
struct fs_fte {TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FS_LOCK_CHILD ; 
 int /*<<< orphan*/  FS_LOCK_PARENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rhash_fte ; 
 struct fs_fte* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static struct fs_fte *
FUNC7(struct mlx5_flow_group *g,
		  const u32 *match_value,
		  bool take_write)
{
	struct fs_fte *fte_tmp;

	if (take_write)
		FUNC1(&g->node, FS_LOCK_PARENT);
	else
		FUNC0(&g->node, FS_LOCK_PARENT);
	fte_tmp = FUNC2(&g->ftes_hash, match_value,
					 rhash_fte);
	if (!fte_tmp || !FUNC3(&fte_tmp->node)) {
		fte_tmp = NULL;
		goto out;
	}
	if (!fte_tmp->node.active) {
		FUNC4(&fte_tmp->node, false);
		fte_tmp = NULL;
		goto out;
	}

	FUNC1(&fte_tmp->node, FS_LOCK_CHILD);
out:
	if (take_write)
		FUNC6(&g->node, false);
	else
		FUNC5(&g->node);
	return fte_tmp;
}