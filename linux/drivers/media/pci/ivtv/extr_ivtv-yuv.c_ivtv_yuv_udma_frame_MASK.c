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
struct ivtv_dma_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ivtv {TYPE_1__ udma; int /*<<< orphan*/  dma_waitq; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA ; 
 int /*<<< orphan*/  IVTV_F_I_UDMA_PENDING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv*) ; 
 int FUNC6 (struct ivtv*,TYPE_1__*,struct ivtv_dma_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC14(struct ivtv *itv, struct ivtv_dma_frame *args)
{
	FUNC0(wait);
	int rc = 0;
	int got_sig = 0;
	/* DMA the frame */
	FUNC7(&itv->udma.lock);

	if ((rc = FUNC6(itv, &itv->udma, args)) != 0) {
		FUNC8(&itv->udma.lock);
		return rc;
	}

	FUNC3(itv);
	FUNC9(&itv->dma_waitq, &wait, TASK_INTERRUPTIBLE);
	/* if no UDMA is pending and no UDMA is in progress, then the DMA
	   is finished */
	while (FUNC13(IVTV_F_I_UDMA_PENDING, &itv->i_flags) ||
	       FUNC13(IVTV_F_I_UDMA, &itv->i_flags)) {
		/* don't interrupt if the DMA is in progress but break off
		   a still pending DMA. */
		got_sig = FUNC11(current);
		if (got_sig && FUNC12(IVTV_F_I_UDMA_PENDING, &itv->i_flags))
			break;
		got_sig = 0;
		FUNC10();
	}
	FUNC2(&itv->dma_waitq, &wait);

	/* Unmap Last DMA Xfer */
	FUNC4(itv);

	if (got_sig) {
		FUNC1("User stopped YUV UDMA\n");
		FUNC8(&itv->udma.lock);
		return -EINTR;
	}

	FUNC5(itv);

	FUNC8(&itv->udma.lock);
	return rc;
}