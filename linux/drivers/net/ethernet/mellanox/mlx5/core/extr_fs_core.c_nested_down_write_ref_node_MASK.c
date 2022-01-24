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
struct fs_node {int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; } ;
typedef  enum fs_i_lock_class { ____Placeholder_fs_i_lock_class } fs_i_lock_class ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fs_node *node,
				       enum fs_i_lock_class class)
{
	if (node) {
		FUNC0(&node->lock, class);
		FUNC1(&node->refcount);
	}
}