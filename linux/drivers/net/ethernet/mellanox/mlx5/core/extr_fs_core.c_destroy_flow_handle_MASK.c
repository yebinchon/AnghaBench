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
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;
struct mlx5_flow_handle {struct mlx5_flow_handle** rule; TYPE_1__ node; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {int /*<<< orphan*/  dests_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fs_fte *fte,
				struct mlx5_flow_handle *handle,
				struct mlx5_flow_destination *dest,
				int i)
{
	for (; --i >= 0;) {
		if (FUNC2(&handle->rule[i]->node.refcount)) {
			fte->dests_size--;
			FUNC1(&handle->rule[i]->node.list);
			FUNC0(handle->rule[i]);
		}
	}
	FUNC0(handle);
}