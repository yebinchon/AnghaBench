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
struct vb2_queue {int dummy; } ;
struct TYPE_5__ {int width; int height; int bytesperline; int sizeimage; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;
struct coda_q_data {int width; int height; int /*<<< orphan*/  fourcc; } ;
struct TYPE_4__ {int /*<<< orphan*/  m2m_ctx; } ;
struct coda_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; TYPE_1__ fh; } ;
struct coda_codec {scalar_t__ src_fourcc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ V4L2_PIX_FMT_H264 ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_YUYV ; 
 struct coda_codec* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct coda_ctx*,struct coda_codec const*,struct v4l2_format*) ; 
 int FUNC2 (struct coda_ctx*,struct v4l2_format*,int*) ; 
 int FUNC3 (struct coda_ctx*,struct v4l2_format*) ; 
 struct coda_ctx* FUNC4 (void*) ; 
 struct coda_q_data* FUNC5 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 struct vb2_queue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC9(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct coda_ctx *ctx = FUNC4(priv);
	const struct coda_q_data *q_data_src;
	const struct coda_codec *codec;
	struct vb2_queue *src_vq;
	int ret;
	bool use_vdoa;

	ret = FUNC3(ctx, f);
	if (ret < 0)
		return ret;

	q_data_src = FUNC5(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);

	/*
	 * If the source format is already fixed, only allow the same output
	 * resolution
	 */
	src_vq = FUNC7(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	if (FUNC8(src_vq)) {
		f->fmt.pix.width = q_data_src->width;
		f->fmt.pix.height = q_data_src->height;
	}

	f->fmt.pix.colorspace = ctx->colorspace;
	f->fmt.pix.xfer_func = ctx->xfer_func;
	f->fmt.pix.ycbcr_enc = ctx->ycbcr_enc;
	f->fmt.pix.quantization = ctx->quantization;

	q_data_src = FUNC5(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	codec = FUNC0(ctx->dev, q_data_src->fourcc,
				f->fmt.pix.pixelformat);
	if (!codec)
		return -EINVAL;

	ret = FUNC1(ctx, codec, f);
	if (ret < 0)
		return ret;

	/* The h.264 decoder only returns complete 16x16 macroblocks */
	if (codec && codec->src_fourcc == V4L2_PIX_FMT_H264) {
		f->fmt.pix.height = FUNC6(f->fmt.pix.height, 16);
		f->fmt.pix.bytesperline = FUNC6(f->fmt.pix.width, 16);
		f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
				       f->fmt.pix.height * 3 / 2;

		ret = FUNC2(ctx, f, &use_vdoa);
		if (ret < 0)
			return ret;

		if (f->fmt.pix.pixelformat == V4L2_PIX_FMT_YUYV) {
			if (!use_vdoa)
				return -EINVAL;

			f->fmt.pix.bytesperline = FUNC6(f->fmt.pix.width, 16) * 2;
			f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
				f->fmt.pix.height;
		}
	}

	return 0;
}