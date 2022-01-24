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
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_namespace {int def_miss_action; TYPE_1__ node; } ;
struct TYPE_5__ {int /*<<< orphan*/  children; } ;
struct fs_prio {TYPE_3__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_namespace* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  del_sw_ns ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_namespace*) ; 
 struct mlx5_flow_namespace* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_flow_namespace *FUNC6(struct fs_prio *prio,
						       int def_miss_act)
{
	struct mlx5_flow_namespace	*ns;

	ns = FUNC2(sizeof(*ns), GFP_KERNEL);
	if (!ns)
		return FUNC0(-ENOMEM);

	FUNC1(ns);
	ns->def_miss_action = def_miss_act;
	FUNC5(&ns->node, NULL, del_sw_ns);
	FUNC4(&ns->node, &prio->node);
	FUNC3(&ns->node.list, &prio->node.children);

	return ns;
}