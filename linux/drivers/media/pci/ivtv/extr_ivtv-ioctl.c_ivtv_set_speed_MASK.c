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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  video_b_frames; } ;
struct ivtv {int speed; int speed_mute_audio; int /*<<< orphan*/  serialize_lock; int /*<<< orphan*/  dma_waitq; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  decoding; TYPE_1__ cxhdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_PAUSE_PLAYBACK ; 
 int /*<<< orphan*/  CX2341X_DEC_SET_PLAYBACK_SPEED ; 
 int /*<<< orphan*/  CX2341X_DEC_STEP_VIDEO ; 
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

int FUNC13(struct ivtv *itv, int speed)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	int single_step = (speed == 1 || speed == -1);
	FUNC0(wait);

	if (speed == 0) speed = 1000;

	/* No change? */
	if (speed == itv->speed && !single_step)
		return 0;

	if (single_step && (speed < 0) == (itv->speed < 0)) {
		/* Single step video and no need to change direction */
		FUNC5(itv, CX2341X_DEC_STEP_VIDEO, 1, 0);
		itv->speed = speed;
		return 0;
	}
	if (single_step)
		/* Need to change direction */
		speed = speed < 0 ? -1000 : 1000;

	data[0] = (speed > 1000 || speed < -1000) ? 0x80000000 : 0;
	data[0] |= (speed > 1000 || speed < -1500) ? 0x40000000 : 0;
	data[1] = (speed < 0);
	data[2] = speed < 0 ? 3 : 7;
	data[3] = FUNC12(itv->cxhdl.video_b_frames);
	data[4] = (speed == 1500 || speed == 500) ? itv->speed_mute_audio : 0;
	data[5] = 0;
	data[6] = 0;

	if (speed == 1500 || speed == -1500) data[0] |= 1;
	else if (speed == 2000 || speed == -2000) data[0] |= 2;
	else if (speed > -1000 && speed < 0) data[0] |= (-1000 / speed);
	else if (speed < 1000 && speed > 0) data[0] |= (1000 / speed);

	/* If not decoding, just change speed setting */
	if (FUNC2(&itv->decoding) > 0) {
		int got_sig = 0;

		/* Stop all DMA and decoding activity */
		FUNC5(itv, CX2341X_DEC_PAUSE_PLAYBACK, 1, 0);

		/* Wait for any DMA to finish */
		FUNC7(&itv->serialize_lock);
		FUNC8(&itv->dma_waitq, &wait, TASK_INTERRUPTIBLE);
		while (FUNC11(IVTV_F_I_DMA, &itv->i_flags)) {
			got_sig = FUNC10(current);
			if (got_sig)
				break;
			got_sig = 0;
			FUNC9();
		}
		FUNC3(&itv->dma_waitq, &wait);
		FUNC6(&itv->serialize_lock);
		if (got_sig)
			return -EINTR;

		/* Change Speed safely */
		FUNC4(itv, CX2341X_DEC_SET_PLAYBACK_SPEED, 7, data);
		FUNC1("Setting Speed to 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
				data[0], data[1], data[2], data[3], data[4], data[5], data[6]);
	}
	if (single_step) {
		speed = (speed < 0) ? -1 : 1;
		FUNC5(itv, CX2341X_DEC_STEP_VIDEO, 1, 0);
	}
	itv->speed = speed;
	return 0;
}