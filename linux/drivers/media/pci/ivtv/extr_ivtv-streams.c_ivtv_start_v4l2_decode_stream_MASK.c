#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * v4l2_dev; } ;
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/  name; TYPE_1__ vdev; struct ivtv* itv; } ;
struct TYPE_6__ {TYPE_2__* mbox; } ;
struct ivtv {int /*<<< orphan*/  decoding; int /*<<< orphan*/  irqmask; TYPE_3__ dec_mbox; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX2341X_DEC_SET_DMA_BLOCK_SIZE ; 
 int /*<<< orphan*/  CX2341X_DEC_SET_EVENT_NOTIFICATION ; 
 int /*<<< orphan*/  CX2341X_DEC_START_PLAYBACK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int /*<<< orphan*/  IVTV_F_S_STREAMOFF ; 
 int /*<<< orphan*/  IVTV_IRQ_DEC_AUD_MODE_CHG ; 
 int /*<<< orphan*/  IVTV_IRQ_MASK_DECODE ; 
 size_t IVTV_MBOX_DMA ; 
 size_t IVTV_MBOX_DMA_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ,int,int,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct ivtv_stream *s, int gop_offset)
{
	struct ivtv *itv = s->itv;
	int rc;

	if (s->vdev.v4l2_dev == NULL)
		return -EINVAL;

	if (FUNC8(IVTV_F_S_STREAMING, &s->s_flags))
		return 0;	/* already started */

	FUNC0("Starting decode stream %s (gop_offset %d)\n", s->name, gop_offset);

	rc = FUNC6(s);
	if (rc < 0) {
		FUNC3(IVTV_F_S_STREAMING, &s->s_flags);
		return rc;
	}

	/* set dma size to 65536 bytes */
	FUNC7(itv, CX2341X_DEC_SET_DMA_BLOCK_SIZE, 1, 65536);

	/* Clear Streamoff */
	FUNC3(IVTV_F_S_STREAMOFF, &s->s_flags);

	/* Zero out decoder counters */
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA_END].data[0]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA_END].data[1]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA_END].data[2]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA_END].data[3]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA].data[0]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA].data[1]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA].data[2]);
	FUNC9(0, &itv->dec_mbox.mbox[IVTV_MBOX_DMA].data[3]);

	/* turn on notification of dual/stereo mode change */
	FUNC7(itv, CX2341X_DEC_SET_EVENT_NOTIFICATION, 4, 0, 1, IVTV_IRQ_DEC_AUD_MODE_CHG, -1);

	/* start playback */
	FUNC7(itv, CX2341X_DEC_START_PLAYBACK, 2, gop_offset, 0);

	/* Let things settle before we actually start */
	FUNC5(10, 0);

	/* Clear the following Interrupt mask bits for decoding */
	FUNC4(itv, IVTV_IRQ_MASK_DECODE);
	FUNC1("IRQ Mask is now: 0x%08x\n", itv->irqmask);

	/* you're live! sit back and await interrupts :) */
	FUNC2(&itv->decoding);
	return 0;
}