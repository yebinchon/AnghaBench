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
struct mcam_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_DMA_ACTIVE ; 
 int /*<<< orphan*/  CF_SG_RESTART ; 
 int /*<<< orphan*/  S_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mcam_camera *cam)
{
	unsigned long flags;

	/*
	 * Theory: stop the camera controller (whether it is operating
	 * or not).  Delay briefly just in case we race with the SOF
	 * interrupt, then wait until no DMA is active.
	 */
	FUNC5(&cam->dev_lock, flags);
	FUNC1(CF_SG_RESTART, &cam->flags);
	FUNC3(cam);
	cam->state = S_IDLE;
	FUNC6(&cam->dev_lock, flags);
	/*
	 * This is a brutally long sleep, but experience shows that
	 * it can take the controller a while to get the message that
	 * it needs to stop grabbing frames.  In particular, we can
	 * sometimes (on mmp) get a frame at the end WITHOUT the
	 * start-of-frame indication.
	 */
	FUNC4(150);
	if (FUNC7(CF_DMA_ACTIVE, &cam->flags))
		FUNC0(cam, "Timeout waiting for DMA to end\n");
		/* This would be bad news - what now? */
	FUNC5(&cam->dev_lock, flags);
	FUNC2(cam);
	FUNC6(&cam->dev_lock, flags);
}