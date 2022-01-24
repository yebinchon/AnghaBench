#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int field; } ;
struct TYPE_8__ {TYPE_1__ pix; } ;
struct TYPE_9__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ cur_frm; scalar_t__ next_frm; int field_id; TYPE_5__* cfg; int /*<<< orphan*/  dma_queue_lock; int /*<<< orphan*/  dma_queue; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  started; TYPE_3__ fmt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_10__ {int (* getfid ) () ;int /*<<< orphan*/  (* reset ) () ;} ;
struct TYPE_12__ {TYPE_4__ hw_ops; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* clr_intr ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int V4L2_FIELD_NONE ; 
 int V4L2_FIELD_SEQ_TB ; 
 TYPE_6__* ccdc_dev ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct vpfe_device*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct vpfe_device *vpfe_dev = dev_id;
	enum v4l2_field field;
	int fid;

	FUNC6(1, debug, &vpfe_dev->v4l2_dev, "\nStarting vpfe_isr...\n");
	field = vpfe_dev->fmt.fmt.pix.field;

	/* if streaming not started, don't do anything */
	if (!vpfe_dev->started)
		goto clear_intr;

	/* only for 6446 this will be applicable */
	if (ccdc_dev->hw_ops.reset)
		ccdc_dev->hw_ops.reset();

	if (field == V4L2_FIELD_NONE) {
		/* handle progressive frame capture */
		FUNC6(1, debug, &vpfe_dev->v4l2_dev,
			"frame format is progressive...\n");
		if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
			FUNC7(vpfe_dev);
		goto clear_intr;
	}

	/* interlaced or TB capture check which field we are in hardware */
	fid = ccdc_dev->hw_ops.getfid();

	/* switch the software maintained field id */
	vpfe_dev->field_id ^= 1;
	FUNC6(1, debug, &vpfe_dev->v4l2_dev, "field id = %x:%x.\n",
		fid, vpfe_dev->field_id);
	if (fid == vpfe_dev->field_id) {
		/* we are in-sync here,continue */
		if (fid == 0) {
			/*
			 * One frame is just being captured. If the next frame
			 * is available, release the current frame and move on
			 */
			if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
				FUNC7(vpfe_dev);
			/*
			 * based on whether the two fields are stored
			 * interleavely or separately in memory, reconfigure
			 * the CCDC memory address
			 */
			if (field == V4L2_FIELD_SEQ_TB)
				FUNC8(vpfe_dev);
			goto clear_intr;
		}
		/*
		 * if one field is just being captured configure
		 * the next frame get the next frame from the empty
		 * queue if no frame is available hold on to the
		 * current buffer
		 */
		FUNC1(&vpfe_dev->dma_queue_lock);
		if (!FUNC0(&vpfe_dev->dma_queue) &&
		    vpfe_dev->cur_frm == vpfe_dev->next_frm)
			FUNC9(vpfe_dev);
		FUNC2(&vpfe_dev->dma_queue_lock);
	} else if (fid == 0) {
		/*
		 * out of sync. Recover from any hardware out-of-sync.
		 * May loose one frame
		 */
		vpfe_dev->field_id = fid;
	}
clear_intr:
	if (vpfe_dev->cfg->clr_intr)
		vpfe_dev->cfg->clr_intr(irq);

	return IRQ_HANDLED;
}