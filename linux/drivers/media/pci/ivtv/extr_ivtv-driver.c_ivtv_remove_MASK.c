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
struct v4l2_device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct ivtv** sliced_mpeg_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdl; } ;
struct ivtv {int v4l2_cap; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  card_name; TYPE_2__ vbi; TYPE_3__* pdev; scalar_t__ base_addr; scalar_t__ has_cx23415; TYPE_1__ cxhdl; int /*<<< orphan*/  irq_worker_task; int /*<<< orphan*/  irq_worker; int /*<<< orphan*/  dma_timer; int /*<<< orphan*/ * streams; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  decoding; int /*<<< orphan*/  capturing; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IVTV_DECODER_OFFSET ; 
 int /*<<< orphan*/  IVTV_DECODER_SIZE ; 
 int IVTV_DEC_STREAM_TYPE_MPG ; 
 int IVTV_DEC_STREAM_TYPE_YUV ; 
 int /*<<< orphan*/  IVTV_ENCODER_SIZE ; 
 int /*<<< orphan*/  IVTV_F_I_DEC_YUV ; 
 int /*<<< orphan*/  IVTV_F_I_INITED ; 
 int /*<<< orphan*/  IVTV_HW_SAA7127 ; 
 scalar_t__ IVTV_REG_OFFSET ; 
 int /*<<< orphan*/  IVTV_REG_SIZE ; 
 int IVTV_VBI_FRAMES ; 
 int V4L2_CAP_VIDEO_OUTPUT ; 
 int V4L2_DEC_CMD_STOP_IMMEDIATELY ; 
 int V4L2_DEC_CMD_STOP_TO_BLACK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct v4l2_device* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC9 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC10 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC14 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC15 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ivtv* FUNC22 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC25(struct pci_dev *pdev)
{
	struct v4l2_device *v4l2_dev = FUNC3(&pdev->dev);
	struct ivtv *itv = FUNC22(v4l2_dev);
	int i;

	FUNC0("Removing card\n");

	FUNC5(itv);

	if (FUNC21(IVTV_F_I_INITED, &itv->i_flags)) {
		/* Stop all captures */
		FUNC0("Stopping all streams\n");
		if (FUNC1(&itv->capturing) > 0)
			FUNC11(itv);

		/* Stop all decoding */
		FUNC0("Stopping decoding\n");

		/* Turn off the TV-out */
		if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT)
			FUNC7(itv, IVTV_HW_SAA7127, video, s_stream, 0);
		if (FUNC1(&itv->decoding) > 0) {
			int type;

			if (FUNC21(IVTV_F_I_DEC_YUV, &itv->i_flags))
				type = IVTV_DEC_STREAM_TYPE_YUV;
			else
				type = IVTV_DEC_STREAM_TYPE_MPG;
			FUNC12(&itv->streams[type],
				V4L2_DEC_CMD_STOP_TO_BLACK | V4L2_DEC_CMD_STOP_IMMEDIATELY, 0);
		}
		FUNC8(itv);
	}

	/* Interrupts */
	FUNC10(itv, 0xffffffff);
	FUNC2(&itv->dma_timer);

	/* Kill irq worker */
	FUNC16(&itv->irq_worker);
	FUNC17(itv->irq_worker_task);

	FUNC13(itv);
	FUNC14(itv);

	FUNC23(&itv->cxhdl.hdl);

	FUNC4(itv);

	FUNC6(itv->pdev->irq, (void *)itv);
	FUNC9(itv);

	FUNC20(itv->base_addr, IVTV_ENCODER_SIZE);
	FUNC20(itv->base_addr + IVTV_REG_OFFSET, IVTV_REG_SIZE);
	if (itv->has_cx23415)
		FUNC20(itv->base_addr + IVTV_DECODER_OFFSET, IVTV_DECODER_SIZE);

	FUNC18(itv->pdev);
	for (i = 0; i < IVTV_VBI_FRAMES; i++)
		FUNC15(itv->vbi.sliced_mpeg_data[i]);

	FUNC19("Removed %s\n", itv->card_name);

	FUNC24(&itv->v4l2_dev);
	FUNC15(itv);
}