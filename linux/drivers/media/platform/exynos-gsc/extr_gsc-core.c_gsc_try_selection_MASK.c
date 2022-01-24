#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_12__ {scalar_t__ top; int left; scalar_t__ width; scalar_t__ height; } ;
struct v4l2_selection {scalar_t__ type; TYPE_6__ r; } ;
struct gsc_variant {TYPE_2__* pix_min; TYPE_1__* pix_align; } ;
struct gsc_frame {scalar_t__ f_width; scalar_t__ f_height; TYPE_5__* fmt; } ;
struct gsc_dev {struct gsc_variant* variant; } ;
struct TYPE_10__ {TYPE_3__* rotate; } ;
struct gsc_ctx {TYPE_4__ gsc_ctrls; struct gsc_frame s_frame; struct gsc_frame d_frame; struct gsc_dev* gsc_dev; } ;
struct TYPE_11__ {int num_comp; int /*<<< orphan*/  color; } ;
struct TYPE_9__ {int val; } ;
struct TYPE_8__ {scalar_t__ target_rot_en_w; scalar_t__ target_rot_en_h; scalar_t__ target_rot_dis_w; scalar_t__ target_rot_dis_h; } ;
struct TYPE_7__ {int /*<<< orphan*/  target_h; int /*<<< orphan*/  target_w; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC9(struct gsc_ctx *ctx, struct v4l2_selection *s)
{
	struct gsc_frame *f;
	struct gsc_dev *gsc = ctx->gsc_dev;
	struct gsc_variant *variant = gsc->variant;
	u32 mod_x = 0, mod_y = 0, tmp_w, tmp_h;
	u32 min_w, min_h, max_w, max_h;

	if (s->r.top < 0 || s->r.left < 0) {
		FUNC7("doesn't support negative values for top & left\n");
		return -EINVAL;
	}
	FUNC6("user put w: %d, h: %d", s->r.width, s->r.height);

	if (s->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		f = &ctx->d_frame;
	else if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
		f = &ctx->s_frame;
	else
		return -EINVAL;

	max_w = f->f_width;
	max_h = f->f_height;
	tmp_w = s->r.width;
	tmp_h = s->r.height;

	if (FUNC0(s->type)) {
		if ((FUNC5(f->fmt->color) && f->fmt->num_comp == 1) ||
		    FUNC3(f->fmt->color))
			min_w = 32;
		else
			min_w = 64;
		if ((FUNC5(f->fmt->color) && f->fmt->num_comp == 3) ||
		    FUNC4(f->fmt->color))
			min_h = 32;
		else
			min_h = 16;
	} else {
		if (FUNC4(f->fmt->color) || FUNC5(f->fmt->color))
			mod_x = FUNC1(variant->pix_align->target_w) - 1;
		if (FUNC4(f->fmt->color))
			mod_y = FUNC1(variant->pix_align->target_h) - 1;
		if (ctx->gsc_ctrls.rotate->val == 90 ||
		    ctx->gsc_ctrls.rotate->val == 270) {
			max_w = f->f_height;
			max_h = f->f_width;
			min_w = variant->pix_min->target_rot_en_w;
			min_h = variant->pix_min->target_rot_en_h;
			tmp_w = s->r.height;
			tmp_h = s->r.width;
		} else {
			min_w = variant->pix_min->target_rot_dis_w;
			min_h = variant->pix_min->target_rot_dis_h;
		}
	}
	FUNC6("mod_x: %d, mod_y: %d, min_w: %d, min_h = %d",
					mod_x, mod_y, min_w, min_h);
	FUNC6("tmp_w : %d, tmp_h : %d", tmp_w, tmp_h);

	FUNC8(&tmp_w, min_w, max_w, mod_x,
			      &tmp_h, min_h, max_h, mod_y, 0);

	if (!FUNC0(s->type) &&
	    (ctx->gsc_ctrls.rotate->val == 90 ||
	     ctx->gsc_ctrls.rotate->val == 270))
		FUNC2(tmp_h, tmp_w,
					&s->r.width, &s->r.height);
	else
		FUNC2(tmp_w, tmp_h,
					&s->r.width, &s->r.height);


	/* adjust left/top if cropping rectangle is out of bounds */
	/* Need to add code to algin left value with 2's multiple */
	if (s->r.left + tmp_w > max_w)
		s->r.left = max_w - tmp_w;
	if (s->r.top + tmp_h > max_h)
		s->r.top = max_h - tmp_h;

	if ((FUNC4(f->fmt->color) || FUNC5(f->fmt->color)) &&
	    s->r.left & 1)
		s->r.left -= 1;

	FUNC6("Aligned l:%d, t:%d, w:%d, h:%d, f_w: %d, f_h: %d",
		 s->r.left, s->r.top, s->r.width, s->r.height, max_w, max_h);

	return 0;
}