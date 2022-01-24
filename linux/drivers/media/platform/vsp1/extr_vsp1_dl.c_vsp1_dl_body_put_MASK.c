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
struct vsp1_dl_body {TYPE_1__* pool; int /*<<< orphan*/  free; scalar_t__ num_entries; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct vsp1_dl_body *dlb)
{
	unsigned long flags;

	if (!dlb)
		return;

	if (!FUNC1(&dlb->refcnt))
		return;

	dlb->num_entries = 0;

	FUNC2(&dlb->pool->lock, flags);
	FUNC0(&dlb->free, &dlb->pool->free);
	FUNC3(&dlb->pool->lock, flags);
}