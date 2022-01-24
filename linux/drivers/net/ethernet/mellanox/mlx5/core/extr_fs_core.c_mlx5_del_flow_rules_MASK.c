#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_handle {int num_rules; TYPE_1__** rule; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct fs_fte {TYPE_2__ node; scalar_t__ dests_size; scalar_t__ modify_mask; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_3__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fs_fte*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_fte*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

void FUNC9(struct mlx5_flow_handle *handle)
{
	struct fs_fte *fte;
	int i;

	/* In order to consolidate the HW changes we lock the FTE for other
	 * changes, and increase its refcount, in order not to perform the
	 * "del" functions of the FTE. Will handle them here.
	 * The removal of the rules is done under locked FTE.
	 * After removing all the handle's rules, if there are remaining
	 * rules, it means we just need to modify the FTE in FW, and
	 * unlock/decrease the refcount we increased before.
	 * Otherwise, it means the FTE should be deleted. First delete the
	 * FTE in FW. Then, unlock the FTE, and proceed the tree_put_node of
	 * the FTE, which will handle the last decrease of the refcount, as
	 * well as required handling of its parent.
	 */
	FUNC2(fte, handle->rule[0]->node.parent);
	FUNC1(&fte->node, false);
	for (i = handle->num_rules - 1; i >= 0; i--)
		FUNC6(&handle->rule[i]->node, true);
	if (fte->modify_mask && fte->dests_size) {
		FUNC4(fte);
		FUNC8(&fte->node, false);
	} else {
		FUNC0(&fte->node);
		FUNC7(&fte->node.lock);
		FUNC5(&fte->node, false);
	}
	FUNC3(handle);
}