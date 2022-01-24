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
struct fs_node {int /*<<< orphan*/  (* del_sw_func ) (struct fs_node*) ;int /*<<< orphan*/  list; int /*<<< orphan*/  (* del_hw_func ) (struct fs_node*) ;int /*<<< orphan*/  refcount; struct fs_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs_node*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct fs_node*,int) ; 

__attribute__((used)) static void FUNC7(struct fs_node *node, bool locked)
{
	struct fs_node *parent_node = node->parent;

	if (FUNC3(&node->refcount)) {
		if (node->del_hw_func)
			node->del_hw_func(node);
		if (parent_node) {
			/* Only root namespace doesn't have parent and we just
			 * need to free its node.
			 */
			FUNC0(parent_node, locked);
			FUNC2(&node->list);
			if (node->del_sw_func)
				node->del_sw_func(node);
			FUNC6(parent_node, locked);
		} else {
			FUNC1(node);
		}
		node = NULL;
	}
	if (!node && parent_node)
		FUNC7(parent_node, locked);
}