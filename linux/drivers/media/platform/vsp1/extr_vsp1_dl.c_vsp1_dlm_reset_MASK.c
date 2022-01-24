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
struct vsp1_dl_manager {int /*<<< orphan*/ * pending; int /*<<< orphan*/ * queued; int /*<<< orphan*/ * active; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct vsp1_dl_manager *dlm)
{
	unsigned long flags;

	FUNC1(&dlm->lock, flags);

	FUNC0(dlm->active);
	FUNC0(dlm->queued);
	FUNC0(dlm->pending);

	FUNC2(&dlm->lock, flags);

	dlm->active = NULL;
	dlm->queued = NULL;
	dlm->pending = NULL;
}