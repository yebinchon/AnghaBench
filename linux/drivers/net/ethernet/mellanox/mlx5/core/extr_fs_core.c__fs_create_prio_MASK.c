#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  children; } ;
struct mlx5_flow_namespace {TYPE_3__ node; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  list; } ;
struct fs_prio {int num_levels; unsigned int prio; TYPE_1__ node; } ;
typedef  enum fs_node_type { ____Placeholder_fs_node_type } fs_node_type ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fs_prio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  del_sw_prio ; 
 struct fs_prio* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fs_prio *FUNC5(struct mlx5_flow_namespace *ns,
				       unsigned int prio,
				       int num_levels,
				       enum fs_node_type type)
{
	struct fs_prio *fs_prio;

	fs_prio = FUNC1(sizeof(*fs_prio), GFP_KERNEL);
	if (!fs_prio)
		return FUNC0(-ENOMEM);

	fs_prio->node.type = type;
	FUNC4(&fs_prio->node, NULL, del_sw_prio);
	FUNC3(&fs_prio->node, &ns->node);
	fs_prio->num_levels = num_levels;
	fs_prio->prio = prio;
	FUNC2(&fs_prio->node.list, &ns->node.children);

	return fs_prio;
}