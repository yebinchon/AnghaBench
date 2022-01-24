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
struct vsp1_pipeline {int /*<<< orphan*/  sequence; int /*<<< orphan*/  (* frame_end ) (struct vsp1_pipeline*,unsigned int) ;scalar_t__ hgt; scalar_t__ hgo; TYPE_1__* output; } ;
struct TYPE_2__ {int /*<<< orphan*/  dlm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vsp1_pipeline*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct vsp1_pipeline *pipe)
{
	unsigned int flags;

	if (pipe == NULL)
		return;

	/*
	 * If the DL commit raced with the frame end interrupt, the commit ends
	 * up being postponed by one frame. The returned flags tell whether the
	 * active frame was finished or postponed.
	 */
	flags = FUNC1(pipe->output->dlm);

	if (pipe->hgo)
		FUNC2(pipe->hgo);

	if (pipe->hgt)
		FUNC3(pipe->hgt);

	/*
	 * Regardless of frame completion we still need to notify the pipe
	 * frame_end to account for vblank events.
	 */
	if (pipe->frame_end)
		pipe->frame_end(pipe, flags);

	pipe->sequence++;
}