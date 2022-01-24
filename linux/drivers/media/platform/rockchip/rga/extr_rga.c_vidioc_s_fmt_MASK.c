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
struct TYPE_6__ {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  bytesperline; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_3__ fmt; int /*<<< orphan*/  type; } ;
struct rockchip_rga {int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ top; scalar_t__ left; } ;
struct rga_frame {int /*<<< orphan*/  height; TYPE_4__ crop; int /*<<< orphan*/  width; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  stride; struct rga_fmt* fmt; int /*<<< orphan*/  size; } ;
struct rga_fmt {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; struct rockchip_rga* rga; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rga_frame*) ; 
 int FUNC1 (struct rga_frame*) ; 
 struct rga_fmt* FUNC2 (struct v4l2_format*) ; 
 struct rga_frame* FUNC3 (struct rga_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct vb2_queue* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_queue*) ; 
 int FUNC7 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC8(struct file *file, void *prv, struct v4l2_format *f)
{
	struct rga_ctx *ctx = prv;
	struct rockchip_rga *rga = ctx->rga;
	struct vb2_queue *vq;
	struct rga_frame *frm;
	struct rga_fmt *fmt;
	int ret = 0;

	/* Adjust all values accordingly to the hardware capabilities
	 * and chosen format.
	 */
	ret = FUNC7(file, prv, f);
	if (ret)
		return ret;
	vq = FUNC5(ctx->fh.m2m_ctx, f->type);
	if (FUNC6(vq)) {
		FUNC4(&rga->v4l2_dev, "queue (%d) bust\n", f->type);
		return -EBUSY;
	}
	frm = FUNC3(ctx, f->type);
	if (FUNC0(frm))
		return FUNC1(frm);
	fmt = FUNC2(f);
	if (!fmt)
		return -EINVAL;
	frm->width = f->fmt.pix.width;
	frm->height = f->fmt.pix.height;
	frm->size = f->fmt.pix.sizeimage;
	frm->fmt = fmt;
	frm->stride = f->fmt.pix.bytesperline;
	frm->colorspace = f->fmt.pix.colorspace;

	/* Reset crop settings */
	frm->crop.left = 0;
	frm->crop.top = 0;
	frm->crop.width = frm->width;
	frm->crop.height = frm->height;

	return 0;
}