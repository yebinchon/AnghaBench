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
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  hdl; } ;
struct TYPE_4__ {struct cx18** sliced_mpeg_data; } ;
struct cx18 {int /*<<< orphan*/  card_name; TYPE_2__ av_state; TYPE_1__ vbi; TYPE_3__* pci_dev; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  in_work_queue; int /*<<< orphan*/  tot_capturing; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX18_MEM_SIZE ; 
 int CX18_VBI_FRAMES ; 
 int IRQ_APU_TO_EPU ; 
 int IRQ_APU_TO_EPU_ACK ; 
 int IRQ_CPU_TO_EPU ; 
 int IRQ_CPU_TO_EPU_ACK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC8 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cx18*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC13 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct cx18*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 struct v4l2_device* FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx18* FUNC19 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct v4l2_device*) ; 

__attribute__((used)) static void FUNC22(struct pci_dev *pci_dev)
{
	struct v4l2_device *v4l2_dev = FUNC17(pci_dev);
	struct cx18 *cx = FUNC19(v4l2_dev);
	int i;

	FUNC0("Removing Card\n");

	FUNC13(cx);

	/* Stop all captures */
	FUNC0("Stopping all streams\n");
	if (FUNC2(&cx->tot_capturing) > 0)
		FUNC7(cx);

	/* Stop interrupts that cause incoming work to be queued */
	FUNC9(cx, IRQ_CPU_TO_EPU | IRQ_APU_TO_EPU);

	/* Incoming work can cause outgoing work, so clean up incoming first */
	FUNC3(cx);
	FUNC4(cx);

	/* Stop ack interrupts that may have been needed for work to finish */
	FUNC10(cx, IRQ_CPU_TO_EPU_ACK | IRQ_APU_TO_EPU_ACK);

	FUNC5(cx);

	FUNC11(cx->in_work_queue);

	FUNC8(cx, 1);

	FUNC12(cx);

	FUNC14(cx->pci_dev->irq, (void *)cx);

	FUNC6(cx);

	FUNC18(cx->base_addr, CX18_MEM_SIZE);

	FUNC16(cx->pci_dev);

	if (cx->vbi.sliced_mpeg_data[0])
		for (i = 0; i < CX18_VBI_FRAMES; i++)
			FUNC15(cx->vbi.sliced_mpeg_data[i]);

	FUNC20(&cx->av_state.hdl);

	FUNC1("Removed %s\n", cx->card_name);

	FUNC21(v4l2_dev);
	FUNC15(cx);
}