#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; int /*<<< orphan*/  timecode; TYPE_2__ vb2_buf; int /*<<< orphan*/  field; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct jpu_ctx {TYPE_1__ fh; scalar_t__ encoder; } ;
struct jpu {int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/ * curr; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  JCCMD ; 
 unsigned int JCCMD_JEND ; 
 unsigned int JCCMD_SRST ; 
 int /*<<< orphan*/  JCDERR ; 
 int JCDERR_MASK ; 
 int /*<<< orphan*/  JCDTCD ; 
 int /*<<< orphan*/  JCDTCM ; 
 int /*<<< orphan*/  JCDTCU ; 
 int /*<<< orphan*/  JINTS ; 
 unsigned int JINTS_ERR ; 
 unsigned int JINTS_MASK ; 
 unsigned int JINTS_PROCESS_COMPL ; 
 unsigned int JINTS_TRANSF_COMPL ; 
 scalar_t__ JPU_JPEG_HDR_SIZE ; 
 int V4L2_BUF_FLAG_BFRAME ; 
 int V4L2_BUF_FLAG_KEYFRAME ; 
 int V4L2_BUF_FLAG_PFRAME ; 
 int V4L2_BUF_FLAG_TIMECODE ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * error_to_text ; 
 int FUNC2 (struct jpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct jpu*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC7 (int /*<<< orphan*/ ) ; 
 struct jpu_ctx* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct jpu *jpu = dev_id;
	struct jpu_ctx *curr_ctx;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned int int_status;

	int_status = FUNC2(jpu, JINTS);

	/* ...spurious interrupt */
	if (!((JINTS_TRANSF_COMPL | JINTS_PROCESS_COMPL | JINTS_ERR) &
	    int_status))
		return IRQ_NONE;

	/* ...clear interrupts */
	FUNC3(jpu, ~(int_status & JINTS_MASK), JINTS);
	if (int_status & (JINTS_ERR | JINTS_PROCESS_COMPL))
		FUNC3(jpu, JCCMD_JEND, JCCMD);

	FUNC4(&jpu->lock);

	if ((int_status & JINTS_PROCESS_COMPL) &&
	   !(int_status & JINTS_TRANSF_COMPL))
		goto handled;

	curr_ctx = FUNC8(jpu->m2m_dev);
	if (!curr_ctx) {
		/* ...instance is not running */
		FUNC1(jpu->dev, "no active context for m2m\n");
		goto handled;
	}

	src_buf = FUNC10(curr_ctx->fh.m2m_ctx);
	dst_buf = FUNC7(curr_ctx->fh.m2m_ctx);

	if (int_status & JINTS_TRANSF_COMPL) {
		if (curr_ctx->encoder) {
			unsigned long payload_size = FUNC2(jpu, JCDTCU) << 16
						   | FUNC2(jpu, JCDTCM) << 8
						   | FUNC2(jpu, JCDTCD);
			FUNC11(&dst_buf->vb2_buf, 0,
				payload_size + JPU_JPEG_HDR_SIZE);
		}

		dst_buf->field = src_buf->field;
		dst_buf->vb2_buf.timestamp = src_buf->vb2_buf.timestamp;
		if (src_buf->flags & V4L2_BUF_FLAG_TIMECODE)
			dst_buf->timecode = src_buf->timecode;
		dst_buf->flags = src_buf->flags &
			(V4L2_BUF_FLAG_TIMECODE | V4L2_BUF_FLAG_KEYFRAME |
			 V4L2_BUF_FLAG_PFRAME | V4L2_BUF_FLAG_BFRAME |
			 V4L2_BUF_FLAG_TSTAMP_SRC_MASK);

		FUNC6(src_buf, VB2_BUF_STATE_DONE);
		FUNC6(dst_buf, VB2_BUF_STATE_DONE);
	} else if (int_status & JINTS_ERR) {
		unsigned char error = FUNC2(jpu, JCDERR) & JCDERR_MASK;

		FUNC0(jpu->dev, "processing error: %#X: %s\n", error,
			error_to_text[error]);

		FUNC6(src_buf, VB2_BUF_STATE_ERROR);
		FUNC6(dst_buf, VB2_BUF_STATE_ERROR);
	}

	jpu->curr = NULL;

	/* ...reset JPU after completion */
	FUNC3(jpu, JCCMD_SRST, JCCMD);
	FUNC5(&jpu->lock);

	FUNC9(jpu->m2m_dev, curr_ctx->fh.m2m_ctx);

	return IRQ_HANDLED;

handled:
	FUNC5(&jpu->lock);
	return IRQ_HANDLED;
}