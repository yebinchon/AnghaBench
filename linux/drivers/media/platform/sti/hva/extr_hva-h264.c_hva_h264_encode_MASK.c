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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct hva_stream {int /*<<< orphan*/  bytesused; int /*<<< orphan*/  size; scalar_t__ vaddr; } ;
struct hva_h264_task {int dummy; } ;
struct hva_h264_ctx {int /*<<< orphan*/  rec_frame; int /*<<< orphan*/  ref_frame; TYPE_1__* task; } ;
struct hva_frame {int dummy; } ;
struct hva_ctx {int /*<<< orphan*/  stream_num; scalar_t__ priv; } ;
struct TYPE_2__ {scalar_t__ vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  H264_ENC ; 
 int /*<<< orphan*/  FUNC0 (struct hva_ctx*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hva_h264_task*) ; 
 scalar_t__ FUNC2 (struct hva_h264_task*) ; 
 int FUNC3 (struct hva_ctx*,struct hva_h264_task*,struct hva_frame*,struct hva_stream*) ; 
 int FUNC4 (struct hva_ctx*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hva_ctx *pctx, struct hva_frame *frame,
			   struct hva_stream *stream)
{
	struct hva_h264_ctx *ctx = (struct hva_h264_ctx *)pctx->priv;
	struct hva_h264_task *task = (struct hva_h264_task *)ctx->task->vaddr;
	u32 stuffing_bytes = 0;
	int ret = 0;

	ret = FUNC3(pctx, task, frame, stream);
	if (ret)
		goto err;

	ret = FUNC4(pctx, H264_ENC, ctx->task);
	if (ret)
		goto err;

	pctx->stream_num++;
	stream->bytesused += FUNC1(task);

	stuffing_bytes = FUNC2(task);

	if (stuffing_bytes)
		FUNC0(pctx, stuffing_bytes,
				       (u8 *)stream->vaddr,
				       stream->size,
				       &stream->bytesused);

	/* switch reference & reconstructed frame */
	FUNC5(ctx->ref_frame, ctx->rec_frame);

	return 0;
err:
	stream->bytesused = 0;
	return ret;
}