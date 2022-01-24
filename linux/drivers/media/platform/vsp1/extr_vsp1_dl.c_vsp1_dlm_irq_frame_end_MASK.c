#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vsp1_dl_manager {int /*<<< orphan*/  lock; TYPE_1__* pending; TYPE_1__* queued; TYPE_1__* active; int /*<<< orphan*/  index; scalar_t__ singleshot; struct vsp1_device* vsp1; } ;
struct vsp1_device {int dummy; } ;
struct TYPE_3__ {unsigned int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  VI6_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int VSP1_DL_FRAME_END_COMPLETED ; 
 int VSP1_DL_FRAME_END_INTERNAL ; 
 unsigned int VSP1_DL_FRAME_END_WRITEBACK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct vsp1_dl_manager*) ; 
 int FUNC6 (struct vsp1_device*,int /*<<< orphan*/ ) ; 

unsigned int FUNC7(struct vsp1_dl_manager *dlm)
{
	struct vsp1_device *vsp1 = dlm->vsp1;
	u32 status = FUNC6(vsp1, VI6_STATUS);
	unsigned int flags = 0;

	FUNC2(&dlm->lock);

	/*
	 * The mem-to-mem pipelines work in single-shot mode. No new display
	 * list can be queued, we don't have to do anything.
	 */
	if (dlm->singleshot) {
		FUNC1(dlm->active);
		dlm->active = NULL;
		flags |= VSP1_DL_FRAME_END_COMPLETED;
		goto done;
	}

	/*
	 * If the commit operation raced with the interrupt and occurred after
	 * the frame end event but before interrupt processing, the hardware
	 * hasn't taken the update into account yet. We have to skip one frame
	 * and retry.
	 */
	if (FUNC5(dlm))
		goto done;

	/*
	 * Progressive streams report only TOP fields. If we have a BOTTOM
	 * field, we are interlaced, and expect the frame to complete on the
	 * next frame end interrupt.
	 */
	if (status & FUNC0(dlm->index))
		goto done;

	/*
	 * If the active display list has the writeback flag set, the frame
	 * completion marks the end of the writeback capture. Return the
	 * VSP1_DL_FRAME_END_WRITEBACK flag and reset the display list's
	 * writeback flag.
	 */
	if (dlm->active && (dlm->active->flags & VSP1_DL_FRAME_END_WRITEBACK)) {
		flags |= VSP1_DL_FRAME_END_WRITEBACK;
		dlm->active->flags &= ~VSP1_DL_FRAME_END_WRITEBACK;
	}

	/*
	 * The device starts processing the queued display list right after the
	 * frame end interrupt. The display list thus becomes active.
	 */
	if (dlm->queued) {
		if (dlm->queued->flags & VSP1_DL_FRAME_END_INTERNAL)
			flags |= VSP1_DL_FRAME_END_INTERNAL;
		dlm->queued->flags &= ~VSP1_DL_FRAME_END_INTERNAL;

		FUNC1(dlm->active);
		dlm->active = dlm->queued;
		dlm->queued = NULL;
		flags |= VSP1_DL_FRAME_END_COMPLETED;
	}

	/*
	 * Now that the VSP has started processing the queued display list, we
	 * can queue the pending display list to the hardware if one has been
	 * prepared.
	 */
	if (dlm->pending) {
		FUNC4(dlm->pending);
		dlm->queued = dlm->pending;
		dlm->pending = NULL;
	}

done:
	FUNC3(&dlm->lock);

	return flags;
}