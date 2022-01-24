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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; int /*<<< orphan*/  timecode; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_2__ fh; int /*<<< orphan*/  subsampling; } ;
struct s5p_jpeg {int irq_status; int /*<<< orphan*/  slock; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev; TYPE_1__* variant; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_4__ {scalar_t__ version; } ;

/* Variables and functions */
 int EXYNOS3250_HEADER_STAT ; 
 int EXYNOS3250_JPEG_DONE ; 
 int EXYNOS3250_RDMA_DONE ; 
 int EXYNOS3250_RESULT_STAT ; 
 int EXYNOS3250_STREAM_STAT ; 
 int EXYNOS3250_TIMER_INT_STAT ; 
 int EXYNOS3250_WDMA_DONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ S5P_JPEG_DECODE ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 scalar_t__ SJPEG_EXYNOS5420 ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vb2_v4l2_buffer*,int) ; 
 struct vb2_v4l2_buffer* FUNC11 (int /*<<< orphan*/ ) ; 
 struct s5p_jpeg_ctx* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *dev_id)
{
	struct s5p_jpeg *jpeg = dev_id;
	struct s5p_jpeg_ctx *curr_ctx;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned long payload_size = 0;
	enum vb2_buffer_state state = VB2_BUF_STATE_DONE;
	bool interrupt_timeout = false;
	bool stream_error = false;
	u32 irq_status;

	FUNC8(&jpeg->slock);

	irq_status = FUNC6(jpeg->regs);
	if (irq_status & EXYNOS3250_TIMER_INT_STAT) {
		FUNC2(jpeg->regs);
		interrupt_timeout = true;
		FUNC0(jpeg->dev, "Interrupt timeout occurred.\n");
	}

	irq_status = FUNC4(jpeg->regs);
	FUNC1(jpeg->regs, irq_status);

	jpeg->irq_status |= irq_status;

	if (jpeg->variant->version == SJPEG_EXYNOS5420 &&
	    irq_status & EXYNOS3250_STREAM_STAT) {
		stream_error = true;
		FUNC0(jpeg->dev, "Syntax error or unrecoverable error occurred.\n");
	}

	curr_ctx = FUNC12(jpeg->m2m_dev);

	if (!curr_ctx)
		goto exit_unlock;

	if ((irq_status & EXYNOS3250_HEADER_STAT) &&
	    (curr_ctx->mode == S5P_JPEG_DECODE)) {
		FUNC7(jpeg->regs);
		goto exit_unlock;
	}

	if (jpeg->irq_status & (EXYNOS3250_JPEG_DONE |
				EXYNOS3250_WDMA_DONE |
				EXYNOS3250_RDMA_DONE |
				EXYNOS3250_RESULT_STAT))
		payload_size = FUNC3(jpeg->regs);
	else if (interrupt_timeout || stream_error)
		state = VB2_BUF_STATE_ERROR;
	else
		goto exit_unlock;

	src_buf = FUNC14(curr_ctx->fh.m2m_ctx);
	dst_buf = FUNC11(curr_ctx->fh.m2m_ctx);

	dst_buf->timecode = src_buf->timecode;
	dst_buf->vb2_buf.timestamp = src_buf->vb2_buf.timestamp;

	FUNC10(src_buf, state);
	if (curr_ctx->mode == S5P_JPEG_ENCODE)
		FUNC15(&dst_buf->vb2_buf, 0, payload_size);
	FUNC10(dst_buf, state);

	curr_ctx->subsampling =
			FUNC5(jpeg->regs);

	FUNC9(&jpeg->slock);

	FUNC13(jpeg->m2m_dev, curr_ctx->fh.m2m_ctx);
	return IRQ_HANDLED;

exit_unlock:
	FUNC9(&jpeg->slock);
	return IRQ_HANDLED;
}