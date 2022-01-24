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
struct TYPE_2__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; int /*<<< orphan*/  timecode; TYPE_1__ vb2_buf; } ;
struct sh_veu_dev {int /*<<< orphan*/  xaction; int /*<<< orphan*/  lock; int /*<<< orphan*/  m2m_ctx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VEU_EIER ; 
 int /*<<< orphan*/  VEU_EVTR ; 
 int /*<<< orphan*/  VEU_STR ; 
 int FUNC0 (struct sh_veu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_veu_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct sh_veu_dev *veu = dev_id;
	struct vb2_v4l2_buffer *dst;
	struct vb2_v4l2_buffer *src;
	u32 status = FUNC0(veu, VEU_EVTR);

	/* bundle read mode not used */
	if (!(status & 1))
		return IRQ_NONE;

	/* disable interrupt in VEU */
	FUNC1(veu, VEU_EIER, 0);
	/* halt operation */
	FUNC1(veu, VEU_STR, 0);
	/* ack int, write 0 to clear bits */
	FUNC1(veu, VEU_EVTR, status & ~1);

	/* conversion completed */
	dst = FUNC5(veu->m2m_ctx);
	src = FUNC6(veu->m2m_ctx);
	if (!src || !dst)
		return IRQ_NONE;

	dst->vb2_buf.timestamp = src->vb2_buf.timestamp;
	dst->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst->flags |=
		src->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst->timecode = src->timecode;

	FUNC2(&veu->lock);
	FUNC4(src, VB2_BUF_STATE_DONE);
	FUNC4(dst, VB2_BUF_STATE_DONE);
	FUNC3(&veu->lock);

	veu->xaction++;

	return IRQ_WAKE_THREAD;
}