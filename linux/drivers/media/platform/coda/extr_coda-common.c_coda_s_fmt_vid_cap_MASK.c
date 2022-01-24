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
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_4__ {int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct coda_q_data {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct coda_ctx {scalar_t__ inst_type; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; struct coda_codec const* codec; TYPE_3__* dev; } ;
struct coda_codec {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 scalar_t__ CODA_INST_ENCODER ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 struct coda_codec* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct coda_ctx*,struct v4l2_format*,struct v4l2_rect*) ; 
 int FUNC2 (struct file*,void*,struct v4l2_format*) ; 
 struct coda_ctx* FUNC3 (void*) ; 
 struct coda_q_data* FUNC4 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
			      struct v4l2_format *f)
{
	struct coda_ctx *ctx = FUNC3(priv);
	struct coda_q_data *q_data_src;
	const struct coda_codec *codec;
	struct v4l2_rect r;
	int ret;

	ret = FUNC2(file, priv, f);
	if (ret)
		return ret;

	q_data_src = FUNC4(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	r.left = 0;
	r.top = 0;
	r.width = q_data_src->width;
	r.height = q_data_src->height;

	ret = FUNC1(ctx, f, &r);
	if (ret)
		return ret;

	if (ctx->inst_type != CODA_INST_ENCODER)
		return 0;

	/* Setting the coded format determines the selected codec */
	codec = FUNC0(ctx->dev, q_data_src->fourcc,
				f->fmt.pix.pixelformat);
	if (!codec) {
		FUNC5(&ctx->dev->v4l2_dev, "failed to determine codec\n");
		return -EINVAL;
	}
	ctx->codec = codec;

	ctx->colorspace = f->fmt.pix.colorspace;
	ctx->xfer_func = f->fmt.pix.xfer_func;
	ctx->ycbcr_enc = f->fmt.pix.ycbcr_enc;
	ctx->quantization = f->fmt.pix.quantization;

	return 0;
}