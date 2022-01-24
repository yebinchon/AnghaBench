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
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct coda_ctx {int bit_stream_param; scalar_t__ qsequence; TYPE_1__ fh; } ;

/* Variables and functions */
 int CODA_BIT_STREAM_END_FLAG ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct coda_ctx*,struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct coda_ctx *ctx)
{
	struct vb2_v4l2_buffer *dst_buf;

	/*
	 * For now this only handles the case where we would deadlock with
	 * userspace, i.e. userspace issued DEC_CMD_STOP and waits for EOS,
	 * but after a failed decode run we would hold the context and wait for
	 * userspace to queue more buffers.
	 */
	if (!(ctx->bit_stream_param & CODA_BIT_STREAM_END_FLAG))
		return;

	dst_buf = FUNC1(ctx->fh.m2m_ctx);
	dst_buf->sequence = ctx->qsequence - 1;

	FUNC0(ctx, dst_buf, VB2_BUF_STATE_ERROR);
}