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
struct vb2_queue {int dummy; } ;
struct v4l2_decoder_cmd {int cmd; } ;
struct mtk_vcodec_ctx {int /*<<< orphan*/  m2m_ctx; TYPE_1__* empty_flush_buf; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vb; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
#define  V4L2_DEC_CMD_START 129 
#define  V4L2_DEC_CMD_STOP 128 
 struct mtk_vcodec_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vb2_queue* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_queue*) ; 
 int FUNC7 (struct file*,void*,struct v4l2_decoder_cmd*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *priv,
				struct v4l2_decoder_cmd *cmd)
{
	struct mtk_vcodec_ctx *ctx = FUNC0(priv);
	struct vb2_queue *src_vq, *dst_vq;
	int ret;

	ret = FUNC7(file, priv, cmd);
	if (ret)
		return ret;

	FUNC1(1, "decoder cmd=%u", cmd->cmd);
	dst_vq = FUNC3(ctx->m2m_ctx,
				V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
	switch (cmd->cmd) {
	case V4L2_DEC_CMD_STOP:
		src_vq = FUNC3(ctx->m2m_ctx,
				V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
		if (!FUNC6(src_vq)) {
			FUNC1(1, "Output stream is off. No need to flush.");
			return 0;
		}
		if (!FUNC6(dst_vq)) {
			FUNC1(1, "Capture stream is off. No need to flush.");
			return 0;
		}
		FUNC2(ctx->m2m_ctx, &ctx->empty_flush_buf->vb);
		FUNC4(ctx->m2m_ctx);
		break;

	case V4L2_DEC_CMD_START:
		FUNC5(dst_vq);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}