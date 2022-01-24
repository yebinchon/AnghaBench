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
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct vb2_queue {int dummy; } ;
struct delta_streaminfo {int /*<<< orphan*/  dts; int /*<<< orphan*/  size; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  streamformat; } ;
struct delta_frameinfo {int /*<<< orphan*/  dts; int /*<<< orphan*/  size; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  streamformat; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
typedef  struct delta_dec const delta_dec ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct delta_ctx {scalar_t__ state; TYPE_1__ fh; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; struct delta_dec const* dec; struct delta_streaminfo frameinfo; struct delta_streaminfo streaminfo; struct delta_dev* dev; } ;
struct delta_au {int /*<<< orphan*/  dts; int /*<<< orphan*/  size; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  streamformat; } ;
typedef  int /*<<< orphan*/  str2 ;
typedef  int /*<<< orphan*/  str1 ;

/* Variables and functions */
 int /*<<< orphan*/  DELTA_FLAG_FRAMEINFO ; 
 int /*<<< orphan*/  DELTA_FLAG_STREAMINFO ; 
 scalar_t__ DELTA_STATE_READY ; 
 scalar_t__ DELTA_STATE_WF_FORMAT ; 
 scalar_t__ DELTA_STATE_WF_STREAMINFO ; 
 int EINVAL ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int FUNC0 (struct delta_dec const*,int /*<<< orphan*/ ,struct delta_ctx*,struct delta_streaminfo*) ; 
 int /*<<< orphan*/  decode ; 
 int /*<<< orphan*/  FUNC1 (struct delta_ctx*,struct delta_streaminfo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct delta_streaminfo*,unsigned char*,int) ; 
 int FUNC3 (struct delta_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct delta_dec const**) ; 
 int /*<<< orphan*/  FUNC4 (struct delta_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct delta_streaminfo*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (struct delta_ctx*,struct delta_streaminfo*) ; 
 int /*<<< orphan*/  get_frameinfo ; 
 int /*<<< orphan*/  get_streaminfo ; 
 struct delta_streaminfo* FUNC10 (struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC12 (int /*<<< orphan*/ ) ; 
 struct delta_ctx* FUNC13 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct vb2_queue *q,
					unsigned int count)
{
	struct delta_ctx *ctx = FUNC13(q);
	struct delta_dev *delta = ctx->dev;
	const struct delta_dec *dec = ctx->dec;
	struct delta_au *au;
	int ret = 0;
	struct vb2_v4l2_buffer *vbuf = NULL;
	struct delta_streaminfo *streaminfo = &ctx->streaminfo;
	struct delta_frameinfo *frameinfo = &ctx->frameinfo;
	unsigned char str1[100] = "";
	unsigned char str2[100] = "";

	if ((ctx->state != DELTA_STATE_WF_FORMAT) &&
	    (ctx->state != DELTA_STATE_WF_STREAMINFO))
		return 0;

	if (ctx->state == DELTA_STATE_WF_FORMAT) {
		/* open decoder if not yet done */
		ret = FUNC3(ctx,
					 ctx->streaminfo.streamformat,
					 ctx->frameinfo.pixelformat, &dec);
		if (ret)
			goto err;
		ctx->dec = dec;
		ctx->state = DELTA_STATE_WF_STREAMINFO;
	}

	/*
	 * first buffer should contain stream header,
	 * decode it to get the infos related to stream
	 * such as width, height, dpb, ...
	 */
	vbuf = FUNC12(ctx->fh.m2m_ctx);
	if (!vbuf) {
		FUNC8(delta->dev, "%s failed to start streaming, no stream header buffer enqueued\n",
			ctx->name);
		ret = -EINVAL;
		goto err;
	}
	au = FUNC10(vbuf);
	au->size = FUNC14(&vbuf->vb2_buf, 0);
	au->dts = vbuf->vb2_buf.timestamp;

	FUNC4(ctx, au->dts);

	/* dump access unit */
	FUNC9(ctx, au);

	/* decode this access unit */
	ret = FUNC0(dec, decode, ctx, au);
	if (ret) {
		FUNC8(delta->dev, "%s failed to start streaming, header decoding failed (%d)\n",
			ctx->name, ret);
		goto err;
	}

	ret = FUNC0(dec, get_streaminfo, ctx, streaminfo);
	if (ret) {
		FUNC7(delta->dev,
				    "%s failed to start streaming, valid stream header not yet decoded\n",
				    ctx->name);
		goto err;
	}
	ctx->flags |= DELTA_FLAG_STREAMINFO;

	ret = FUNC0(dec, get_frameinfo, ctx, frameinfo);
	if (ret)
		goto err;
	ctx->flags |= DELTA_FLAG_FRAMEINFO;

	ctx->state = DELTA_STATE_READY;

	FUNC6(delta->dev, "%s %s => %s\n", ctx->name,
		FUNC5(streaminfo, str1, sizeof(str1)),
		FUNC2(frameinfo, str2, sizeof(str2)));

	FUNC1(ctx, au, ret);
	return 0;

err:
	/*
	 * return all buffers to vb2 in QUEUED state.
	 * This will give ownership back to userspace
	 */
	if (vbuf)
		FUNC11(vbuf, VB2_BUF_STATE_QUEUED);

	while ((vbuf = FUNC12(ctx->fh.m2m_ctx)))
		FUNC11(vbuf, VB2_BUF_STATE_QUEUED);
	return ret;
}