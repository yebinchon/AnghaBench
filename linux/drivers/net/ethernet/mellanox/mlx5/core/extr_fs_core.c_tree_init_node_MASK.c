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
struct fs_node {void (* del_hw_func ) (struct fs_node*) ;void (* del_sw_func ) (struct fs_node*) ;int active; int /*<<< orphan*/  lock; int /*<<< orphan*/  children; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(struct fs_node *node,
			   void (*del_hw_func)(struct fs_node *),
			   void (*del_sw_func)(struct fs_node *))
{
	FUNC2(&node->refcount, 1);
	FUNC0(&node->list);
	FUNC0(&node->children);
	FUNC1(&node->lock);
	node->del_hw_func = del_hw_func;
	node->del_sw_func = del_sw_func;
	node->active = false;
}