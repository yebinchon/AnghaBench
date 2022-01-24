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
struct v4l2_pix_format_mplane {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_2__* plane_fmt; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_1__ fmt; } ;
struct gsc_frame {int /*<<< orphan*/  f_height; int /*<<< orphan*/  f_width; int /*<<< orphan*/ * payload; TYPE_3__* fmt; int /*<<< orphan*/  colorspace; } ;
struct gsc_ctx {struct gsc_frame d_frame; struct gsc_frame s_frame; int /*<<< orphan*/  m2m_ctx; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int num_planes; } ;
struct TYPE_5__ {int /*<<< orphan*/  sizeimage; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int GSC_DST_FMT ; 
 int GSC_PARAMS ; 
 int GSC_SRC_FMT ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct gsc_ctx* FUNC1 (void*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct gsc_ctx*) ; 
 int FUNC4 (struct file*,void*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC5 (struct gsc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC10(struct file *file, void *fh,
				 struct v4l2_format *f)
{
	struct gsc_ctx *ctx = FUNC1(fh);
	struct vb2_queue *vq;
	struct gsc_frame *frame;
	struct v4l2_pix_format_mplane *pix;
	int i, ret = 0;

	ret = FUNC4(file, fh, f);
	if (ret)
		return ret;

	vq = FUNC8(ctx->m2m_ctx, f->type);

	if (FUNC9(vq)) {
		FUNC7("queue (%d) busy", f->type);
		return -EBUSY;
	}

	if (FUNC0(f->type))
		frame = &ctx->s_frame;
	else
		frame = &ctx->d_frame;

	pix = &f->fmt.pix_mp;
	frame->fmt = FUNC2(&pix->pixelformat, NULL, 0);
	frame->colorspace = pix->colorspace;
	if (!frame->fmt)
		return -EINVAL;

	for (i = 0; i < frame->fmt->num_planes; i++)
		frame->payload[i] = pix->plane_fmt[i].sizeimage;

	FUNC5(frame, pix->width, pix->height);

	if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
		FUNC3(GSC_PARAMS | GSC_DST_FMT, ctx);
	else
		FUNC3(GSC_PARAMS | GSC_SRC_FMT, ctx);

	FUNC6("f_w: %d, f_h: %d", frame->f_width, frame->f_height);

	return 0;
}