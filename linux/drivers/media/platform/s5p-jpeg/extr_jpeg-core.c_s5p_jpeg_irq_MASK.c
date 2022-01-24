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
struct vb2_v4l2_buffer {int flags; TYPE_2__ vb2_buf; int /*<<< orphan*/  timecode; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_1__ fh; int /*<<< orphan*/  subsampling; } ;
struct s5p_jpeg {int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  slock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ S5P_JPEG_DECODE ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC12 (int /*<<< orphan*/ ) ; 
 struct s5p_jpeg_ctx* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct s5p_jpeg *jpeg = dev_id;
	struct s5p_jpeg_ctx *curr_ctx;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned long payload_size = 0;
	enum vb2_buffer_state state = VB2_BUF_STATE_DONE;
	bool enc_jpeg_too_large = false;
	bool timer_elapsed = false;
	bool op_completed = false;

	FUNC9(&jpeg->slock);

	curr_ctx = FUNC13(jpeg->m2m_dev);

	src_buf = FUNC15(curr_ctx->fh.m2m_ctx);
	dst_buf = FUNC12(curr_ctx->fh.m2m_ctx);

	if (curr_ctx->mode == S5P_JPEG_ENCODE)
		enc_jpeg_too_large = FUNC4(jpeg->regs);
	timer_elapsed = FUNC8(jpeg->regs);
	op_completed = FUNC6(jpeg->regs);
	if (curr_ctx->mode == S5P_JPEG_DECODE)
		op_completed = op_completed &&
					FUNC7(jpeg->regs);

	if (enc_jpeg_too_large) {
		state = VB2_BUF_STATE_ERROR;
		FUNC0(jpeg->regs);
	} else if (timer_elapsed) {
		state = VB2_BUF_STATE_ERROR;
		FUNC2(jpeg->regs);
	} else if (!op_completed) {
		state = VB2_BUF_STATE_ERROR;
	} else {
		payload_size = FUNC3(jpeg->regs);
	}

	dst_buf->timecode = src_buf->timecode;
	dst_buf->vb2_buf.timestamp = src_buf->vb2_buf.timestamp;
	dst_buf->flags &= ~V4L2_BUF_FLAG_TSTAMP_SRC_MASK;
	dst_buf->flags |=
		src_buf->flags & V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

	FUNC11(src_buf, state);
	if (curr_ctx->mode == S5P_JPEG_ENCODE)
		FUNC16(&dst_buf->vb2_buf, 0, payload_size);
	FUNC11(dst_buf, state);

	curr_ctx->subsampling = FUNC5(jpeg->regs);
	FUNC10(&jpeg->slock);

	FUNC1(jpeg->regs);

	FUNC14(jpeg->m2m_dev, curr_ctx->fh.m2m_ctx);
	return IRQ_HANDLED;
}