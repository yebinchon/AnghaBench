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
struct mcam_camera {unsigned int nbufs; scalar_t__ buffer_mode; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ B_DMA_sg ; 
 scalar_t__ CF_DMA_ACTIVE ; 
 scalar_t__ CF_FRAME_SOF0 ; 
 int /*<<< orphan*/  FRAMEIRQS ; 
 unsigned int IRQ_EOF0 ; 
 unsigned int IRQ_HANDLED ; 
 unsigned int IRQ_SOF0 ; 
 int /*<<< orphan*/  REG_IRQSTAT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC6(struct mcam_camera *cam, unsigned int irqs)
{
	unsigned int frame, handled = 0;

	FUNC3(cam, REG_IRQSTAT, FRAMEIRQS); /* Clear'em all */
	/*
	 * Handle any frame completions.  There really should
	 * not be more than one of these, or we have fallen
	 * far behind.
	 *
	 * When running in S/G mode, the frame number lacks any
	 * real meaning - there's only one descriptor array - but
	 * the controller still picks a different one to signal
	 * each time.
	 */
	for (frame = 0; frame < cam->nbufs; frame++)
		if (irqs & (IRQ_EOF0 << frame) &&
			FUNC5(CF_FRAME_SOF0 + frame, &cam->flags)) {
			FUNC2(cam, frame);
			handled = 1;
			FUNC0(CF_FRAME_SOF0 + frame, &cam->flags);
			if (cam->buffer_mode == B_DMA_sg)
				break;
		}
	/*
	 * If a frame starts, note that we have DMA active.  This
	 * code assumes that we won't get multiple frame interrupts
	 * at once; may want to rethink that.
	 */
	for (frame = 0; frame < cam->nbufs; frame++) {
		if (irqs & (IRQ_SOF0 << frame)) {
			FUNC4(CF_FRAME_SOF0 + frame, &cam->flags);
			handled = IRQ_HANDLED;
		}
	}

	if (handled == IRQ_HANDLED) {
		FUNC4(CF_DMA_ACTIVE, &cam->flags);
		if (cam->buffer_mode == B_DMA_sg)
			FUNC1(cam);
	}
	return handled;
}