#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vicodec_q_data {TYPE_4__* info; int /*<<< orphan*/  coded_height; int /*<<< orphan*/  coded_width; int /*<<< orphan*/  sizeimage; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct vicodec_ctx {int /*<<< orphan*/  dev; int /*<<< orphan*/  is_enc; TYPE_1__ fh; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {TYPE_3__* plane_fmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_pix_format {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {struct v4l2_pix_format_mplane pix_mp; struct v4l2_pix_format pix; } ;
struct v4l2_format {int type; TYPE_2__ fmt; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int /*<<< orphan*/  sizeimage; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE 131 
#define  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE 130 
#define  V4L2_BUF_TYPE_VIDEO_OUTPUT 129 
#define  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE 128 
 int /*<<< orphan*/  V4L2_PIX_FMT_FWHT ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_FWHT_STATELESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct vicodec_q_data* FUNC3 (struct vicodec_ctx*,int) ; 
 TYPE_4__ pixfmt_fwht ; 
 TYPE_4__ pixfmt_stateless_fwht ; 
 struct vb2_queue* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC6(struct vicodec_ctx *ctx, struct v4l2_format *f)
{
	struct vicodec_q_data *q_data;
	struct vb2_queue *vq;
	bool fmt_changed = true;
	struct v4l2_pix_format_mplane *pix_mp;
	struct v4l2_pix_format *pix;

	vq = FUNC4(ctx->fh.m2m_ctx, f->type);
	if (!vq)
		return -EINVAL;

	q_data = FUNC3(ctx, f->type);
	if (!q_data)
		return -EINVAL;

	switch (f->type) {
	case V4L2_BUF_TYPE_VIDEO_CAPTURE:
	case V4L2_BUF_TYPE_VIDEO_OUTPUT:
		pix = &f->fmt.pix;
		if (ctx->is_enc && FUNC0(f->type))
			fmt_changed =
				!q_data->info ||
				q_data->info->id != pix->pixelformat ||
				q_data->coded_width != pix->width ||
				q_data->coded_height != pix->height;

		if (FUNC5(vq) && fmt_changed)
			return -EBUSY;

		if (pix->pixelformat == V4L2_PIX_FMT_FWHT)
			q_data->info = &pixfmt_fwht;
		else if (pix->pixelformat == V4L2_PIX_FMT_FWHT_STATELESS)
			q_data->info = &pixfmt_stateless_fwht;
		else
			q_data->info = FUNC2(pix->pixelformat);
		q_data->coded_width = pix->width;
		q_data->coded_height = pix->height;
		q_data->sizeimage = pix->sizeimage;
		break;
	case V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE:
	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
		pix_mp = &f->fmt.pix_mp;
		if (ctx->is_enc && FUNC0(f->type))
			fmt_changed =
				!q_data->info ||
				q_data->info->id != pix_mp->pixelformat ||
				q_data->coded_width != pix_mp->width ||
				q_data->coded_height != pix_mp->height;

		if (FUNC5(vq) && fmt_changed)
			return -EBUSY;

		if (pix_mp->pixelformat == V4L2_PIX_FMT_FWHT)
			q_data->info = &pixfmt_fwht;
		else if (pix_mp->pixelformat == V4L2_PIX_FMT_FWHT_STATELESS)
			q_data->info = &pixfmt_stateless_fwht;
		else
			q_data->info = FUNC2(pix_mp->pixelformat);
		q_data->coded_width = pix_mp->width;
		q_data->coded_height = pix_mp->height;
		q_data->sizeimage = pix_mp->plane_fmt[0].sizeimage;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(ctx->dev,
		"Setting format for type %d, coded wxh: %dx%d, fourcc: 0x%08x\n",
		f->type, q_data->coded_width, q_data->coded_height,
		q_data->info->id);

	return 0;
}