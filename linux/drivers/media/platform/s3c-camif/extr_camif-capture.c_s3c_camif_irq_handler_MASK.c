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
struct camif_vp {int state; int /*<<< orphan*/  frame_sequence; int /*<<< orphan*/  active_buf_q; int /*<<< orphan*/  pending_buf_q; int /*<<< orphan*/  irq_queue; struct camif_dev* camif; } ;
struct camif_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  colorfx_cb; int /*<<< orphan*/  colorfx_cr; int /*<<< orphan*/  colorfx; TYPE_2__* variant; int /*<<< orphan*/  test_pattern; } ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct camif_buffer {unsigned int index; int /*<<< orphan*/  paddr; TYPE_1__ vb; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {unsigned int ip_revision; scalar_t__ has_img_effect; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int CISTATUS_OVF_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int S3C244X_CAMIF_IP_REV ; 
 unsigned int S3C6410_CAMIF_IP_REV ; 
 int ST_VP_ABORTING ; 
 int ST_VP_CONFIG ; 
 int ST_VP_LASTIRQ ; 
 int ST_VP_OFF ; 
 int ST_VP_PENDING ; 
 int ST_VP_RUNNING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct camif_vp*,struct camif_buffer*) ; 
 struct camif_buffer* FUNC3 (struct camif_vp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC5 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC6 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC7 (struct camif_vp*,int) ; 
 unsigned int FUNC8 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC9 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct camif_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC12 (struct camif_vp*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct camif_vp*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC15 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 struct camif_buffer* FUNC16 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC17 (struct camif_vp*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC24(int irq, void *priv)
{
	struct camif_vp *vp = priv;
	struct camif_dev *camif = vp->camif;
	unsigned int ip_rev = camif->variant->ip_revision;
	unsigned int status;

	FUNC20(&camif->slock);

	if (ip_rev == S3C6410_CAMIF_IP_REV)
		FUNC5(vp);

	status = FUNC8(vp);

	if (ip_rev == S3C244X_CAMIF_IP_REV && (status & CISTATUS_OVF_MASK)) {
		FUNC4(vp);
		goto unlock;
	}

	if (vp->state & ST_VP_ABORTING) {
		if (vp->state & ST_VP_OFF) {
			/* Last IRQ */
			vp->state &= ~(ST_VP_OFF | ST_VP_ABORTING |
				       ST_VP_LASTIRQ);
			FUNC23(&vp->irq_queue);
			goto unlock;
		} else if (vp->state & ST_VP_LASTIRQ) {
			FUNC6(vp);
			FUNC7(vp, false);
			FUNC12(vp, false);
			vp->state |= ST_VP_OFF;
		} else {
			/* Disable capture, enable last IRQ */
			FUNC12(vp, true);
			vp->state |= ST_VP_LASTIRQ;
		}
	}

	if (!FUNC19(&vp->pending_buf_q) && (vp->state & ST_VP_RUNNING) &&
	    !FUNC19(&vp->active_buf_q)) {
		unsigned int index;
		struct camif_buffer *vbuf;
		/*
		 * Get previous DMA write buffer index:
		 * 0 => DMA buffer 0, 2;
		 * 1 => DMA buffer 1, 3.
		 */
		index = (FUNC0(status) + 2) & 1;
		vbuf = FUNC3(vp, index);

		if (!FUNC1(vbuf == NULL)) {
			/* Dequeue a filled buffer */
			vbuf->vb.vb2_buf.timestamp = FUNC18();
			vbuf->vb.sequence = vp->frame_sequence++;
			FUNC22(&vbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);

			/* Set up an empty buffer at the DMA engine */
			vbuf = FUNC16(vp);
			vbuf->index = index;
			FUNC13(vp, &vbuf->paddr, index);
			FUNC13(vp, &vbuf->paddr, index + 2);

			/* Scheduled in H/W, add to the queue */
			FUNC2(vp, vbuf);
		}
	} else if (!(vp->state & ST_VP_ABORTING) &&
		   (vp->state & ST_VP_PENDING))  {
		vp->state |= ST_VP_RUNNING;
	}

	if (vp->state & ST_VP_CONFIG) {
		FUNC17(vp);
		FUNC9(camif);
		FUNC14(vp);
		FUNC11(vp);
		FUNC15(camif, camif->test_pattern);
		if (camif->variant->has_img_effect)
			FUNC10(camif, camif->colorfx,
				    camif->colorfx_cr, camif->colorfx_cb);
		vp->state &= ~ST_VP_CONFIG;
	}
unlock:
	FUNC21(&camif->slock);
	return IRQ_HANDLED;
}