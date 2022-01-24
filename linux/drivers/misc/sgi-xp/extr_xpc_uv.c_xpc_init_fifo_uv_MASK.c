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
struct xpc_fifo_head_uv {scalar_t__ n_entries; int /*<<< orphan*/  lock; int /*<<< orphan*/ * last; int /*<<< orphan*/ * first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct xpc_fifo_head_uv *head)
{
	head->first = NULL;
	head->last = NULL;
	FUNC0(&head->lock);
	head->n_entries = 0;
}