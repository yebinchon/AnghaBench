#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {TYPE_5__* plane_fmt; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  num_planes; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; } ;
struct TYPE_6__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_1__ fmt; } ;
struct TYPE_8__ {int /*<<< orphan*/  cap_fourcc; int /*<<< orphan*/  buf_w; } ;
struct TYPE_7__ {int /*<<< orphan*/  buf_h; int /*<<< orphan*/  buf_w; int /*<<< orphan*/ * fb_sz; } ;
struct mtk_vcodec_ctx {scalar_t__ state; int /*<<< orphan*/  id; TYPE_3__ last_decoded_picinfo; TYPE_2__ picinfo; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  m2m_ctx; } ;
struct mtk_q_data {int /*<<< orphan*/ * sizeimage; int /*<<< orphan*/ * bytesperline; TYPE_4__* fmt; int /*<<< orphan*/  coded_height; int /*<<< orphan*/  coded_width; int /*<<< orphan*/  visible_height; int /*<<< orphan*/  visible_width; } ;
struct file {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; } ;
struct TYPE_9__ {int /*<<< orphan*/  fourcc; int /*<<< orphan*/  num_planes; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MTK_STATE_HEADER ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 struct mtk_vcodec_ctx* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct mtk_q_data* FUNC3 (struct mtk_vcodec_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			     struct v4l2_format *f)
{
	struct mtk_vcodec_ctx *ctx = FUNC0(priv);
	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
	struct vb2_queue *vq;
	struct mtk_q_data *q_data;

	vq = FUNC4(ctx->m2m_ctx, f->type);
	if (!vq) {
		FUNC2("no vb2 queue for type=%d", f->type);
		return -EINVAL;
	}

	q_data = FUNC3(ctx, f->type);

	pix_mp->field = V4L2_FIELD_NONE;
	pix_mp->colorspace = ctx->colorspace;
	pix_mp->ycbcr_enc = ctx->ycbcr_enc;
	pix_mp->quantization = ctx->quantization;
	pix_mp->xfer_func = ctx->xfer_func;

	if ((f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) &&
	    (ctx->state >= MTK_STATE_HEADER)) {
		/* Until STREAMOFF is called on the CAPTURE queue
		 * (acknowledging the event), the driver operates as if
		 * the resolution hasn't changed yet.
		 * So we just return picinfo yet, and update picinfo in
		 * stop_streaming hook function
		 */
		q_data->sizeimage[0] = ctx->picinfo.fb_sz[0];
		q_data->sizeimage[1] = ctx->picinfo.fb_sz[1];
		q_data->bytesperline[0] = ctx->last_decoded_picinfo.buf_w;
		q_data->bytesperline[1] = ctx->last_decoded_picinfo.buf_w;
		q_data->coded_width = ctx->picinfo.buf_w;
		q_data->coded_height = ctx->picinfo.buf_h;
		ctx->last_decoded_picinfo.cap_fourcc = q_data->fmt->fourcc;

		/*
		 * Width and height are set to the dimensions
		 * of the movie, the buffer is bigger and
		 * further processing stages should crop to this
		 * rectangle.
		 */
		pix_mp->width = q_data->coded_width;
		pix_mp->height = q_data->coded_height;

		/*
		 * Set pixelformat to the format in which mt vcodec
		 * outputs the decoded frame
		 */
		pix_mp->num_planes = q_data->fmt->num_planes;
		pix_mp->pixelformat = q_data->fmt->fourcc;
		pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
		pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
		pix_mp->plane_fmt[1].bytesperline = q_data->bytesperline[1];
		pix_mp->plane_fmt[1].sizeimage = q_data->sizeimage[1];

	} else if (f->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		/*
		 * This is run on OUTPUT
		 * The buffer contains compressed image
		 * so width and height have no meaning.
		 * Assign value here to pass v4l2-compliance test
		 */
		pix_mp->width = q_data->visible_width;
		pix_mp->height = q_data->visible_height;
		pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
		pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
		pix_mp->pixelformat = q_data->fmt->fourcc;
		pix_mp->num_planes = q_data->fmt->num_planes;
	} else {
		pix_mp->width = q_data->coded_width;
		pix_mp->height = q_data->coded_height;
		pix_mp->num_planes = q_data->fmt->num_planes;
		pix_mp->pixelformat = q_data->fmt->fourcc;
		pix_mp->plane_fmt[0].bytesperline = q_data->bytesperline[0];
		pix_mp->plane_fmt[0].sizeimage = q_data->sizeimage[0];
		pix_mp->plane_fmt[1].bytesperline = q_data->bytesperline[1];
		pix_mp->plane_fmt[1].sizeimage = q_data->sizeimage[1];

		FUNC1(1, "[%d] type=%d state=%d Format information could not be read, not ready yet!",
				ctx->id, f->type, ctx->state);
	}

	return 0;
}