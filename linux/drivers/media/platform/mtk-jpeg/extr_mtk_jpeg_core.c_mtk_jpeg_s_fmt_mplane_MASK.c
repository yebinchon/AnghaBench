#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {TYPE_3__* plane_fmt; int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_5__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_1__ fmt; } ;
struct mtk_jpeg_q_data {int /*<<< orphan*/ * sizeimage; int /*<<< orphan*/ * bytesperline; TYPE_4__* fmt; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct mtk_jpeg_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_jpeg_ctx {int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; TYPE_2__ fh; struct mtk_jpeg_dev* jpeg; } ;
struct TYPE_8__ {int fourcc; int colplanes; } ;
struct TYPE_7__ {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int MTK_JPEG_FMT_TYPE_CAPTURE ; 
 unsigned int MTK_JPEG_FMT_TYPE_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 TYPE_4__* FUNC1 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_jpeg_q_data* FUNC2 (struct mtk_jpeg_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct vb2_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC7(struct mtk_jpeg_ctx *ctx,
				 struct v4l2_format *f)
{
	struct vb2_queue *vq;
	struct mtk_jpeg_q_data *q_data = NULL;
	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
	unsigned int f_type;
	int i;

	vq = FUNC5(ctx->fh.m2m_ctx, f->type);
	if (!vq)
		return -EINVAL;

	q_data = FUNC2(ctx, f->type);

	if (FUNC6(vq)) {
		FUNC4(&jpeg->v4l2_dev, "queue busy\n");
		return -EBUSY;
	}

	f_type = FUNC0(f->type) ?
			 MTK_JPEG_FMT_TYPE_OUTPUT : MTK_JPEG_FMT_TYPE_CAPTURE;

	q_data->fmt = FUNC1(ctx, pix_mp->pixelformat, f_type);
	q_data->w = pix_mp->width;
	q_data->h = pix_mp->height;
	ctx->colorspace = pix_mp->colorspace;
	ctx->ycbcr_enc = pix_mp->ycbcr_enc;
	ctx->xfer_func = pix_mp->xfer_func;
	ctx->quantization = pix_mp->quantization;

	FUNC3(1, debug, &jpeg->v4l2_dev, "(%d) s_fmt:%c%c%c%c wxh:%ux%u\n",
		 f->type,
		 (q_data->fmt->fourcc & 0xff),
		 (q_data->fmt->fourcc >>  8 & 0xff),
		 (q_data->fmt->fourcc >> 16 & 0xff),
		 (q_data->fmt->fourcc >> 24 & 0xff),
		 q_data->w, q_data->h);

	for (i = 0; i < q_data->fmt->colplanes; i++) {
		q_data->bytesperline[i] = pix_mp->plane_fmt[i].bytesperline;
		q_data->sizeimage[i] = pix_mp->plane_fmt[i].sizeimage;

		FUNC3(1, debug, &jpeg->v4l2_dev,
			 "plane[%d] bpl=%u, size=%u\n",
			 i, q_data->bytesperline[i], q_data->sizeimage[i]);
	}

	return 0;
}