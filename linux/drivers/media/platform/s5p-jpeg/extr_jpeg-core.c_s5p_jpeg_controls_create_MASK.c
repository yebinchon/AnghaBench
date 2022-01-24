#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl {int flags; } ;
struct TYPE_10__ {int error; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_3__ ctrl_handler; TYPE_2__* jpeg; } ;
struct TYPE_9__ {TYPE_1__* variant; } ;
struct TYPE_8__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  S5P_JPEG_COMPR_QUAL_WORST ; 
 scalar_t__ S5P_JPEG_DECODE ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 scalar_t__ SJPEG_S5P ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_CHROMA_SUBSAMPLING ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_RESTART_INTERVAL ; 
 int V4L2_CTRL_FLAG_READ_ONLY ; 
 int V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  V4L2_JPEG_CHROMA_SUBSAMPLING_422 ; 
 int /*<<< orphan*/  V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY ; 
 int /*<<< orphan*/  s5p_jpeg_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct v4l2_ctrl* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct s5p_jpeg_ctx *ctx)
{
	unsigned int mask = ~0x27; /* 444, 422, 420, GRAY */
	struct v4l2_ctrl *ctrl;
	int ret;

	FUNC1(&ctx->ctrl_handler, 3);

	if (ctx->mode == S5P_JPEG_ENCODE) {
		FUNC3(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
				  V4L2_CID_JPEG_COMPRESSION_QUALITY,
				  0, 3, 1, S5P_JPEG_COMPR_QUAL_WORST);

		FUNC3(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
				  V4L2_CID_JPEG_RESTART_INTERVAL,
				  0, 0xffff, 1, 0);
		if (ctx->jpeg->variant->version == SJPEG_S5P)
			mask = ~0x06; /* 422, 420 */
	}

	ctrl = FUNC4(&ctx->ctrl_handler, &s5p_jpeg_ctrl_ops,
				      V4L2_CID_JPEG_CHROMA_SUBSAMPLING,
				      V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY, mask,
				      V4L2_JPEG_CHROMA_SUBSAMPLING_422);

	if (ctx->ctrl_handler.error) {
		ret = ctx->ctrl_handler.error;
		goto error_free;
	}

	if (ctx->mode == S5P_JPEG_DECODE)
		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE |
			V4L2_CTRL_FLAG_READ_ONLY;

	ret = FUNC2(&ctx->ctrl_handler);
	if (ret < 0)
		goto error_free;

	return ret;

error_free:
	FUNC0(&ctx->ctrl_handler);
	return ret;
}