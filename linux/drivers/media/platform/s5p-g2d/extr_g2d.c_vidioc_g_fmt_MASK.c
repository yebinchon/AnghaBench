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
struct TYPE_7__ {int width; int bytesperline; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  field; int /*<<< orphan*/  height; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int /*<<< orphan*/  type; } ;
struct g2d_frame {int width; int /*<<< orphan*/  size; TYPE_2__* fmt; int /*<<< orphan*/  height; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct g2d_ctx {TYPE_1__ fh; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int depth; int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct g2d_frame*) ; 
 int FUNC1 (struct g2d_frame*) ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 struct g2d_frame* FUNC2 (struct g2d_ctx*,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *prv, struct v4l2_format *f)
{
	struct g2d_ctx *ctx = prv;
	struct vb2_queue *vq;
	struct g2d_frame *frm;

	vq = FUNC3(ctx->fh.m2m_ctx, f->type);
	if (!vq)
		return -EINVAL;
	frm = FUNC2(ctx, f->type);
	if (FUNC0(frm))
		return FUNC1(frm);

	f->fmt.pix.width		= frm->width;
	f->fmt.pix.height		= frm->height;
	f->fmt.pix.field		= V4L2_FIELD_NONE;
	f->fmt.pix.pixelformat		= frm->fmt->fourcc;
	f->fmt.pix.bytesperline		= (frm->width * frm->fmt->depth) >> 3;
	f->fmt.pix.sizeimage		= frm->size;
	return 0;
}