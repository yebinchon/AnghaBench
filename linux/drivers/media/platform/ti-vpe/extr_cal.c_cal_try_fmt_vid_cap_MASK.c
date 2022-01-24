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
struct v4l2_subdev_frame_size_enum {scalar_t__ max_width; scalar_t__ max_height; scalar_t__ min_width; scalar_t__ min_height; scalar_t__ index; int /*<<< orphan*/  which; int /*<<< orphan*/  code; scalar_t__ pad; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cal_fmt {int /*<<< orphan*/  code; int /*<<< orphan*/  fourcc; } ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; } ;
struct TYPE_9__ {TYPE_3__ pix; } ;
struct TYPE_10__ {TYPE_4__ fmt; } ;
struct cal_ctx {TYPE_5__ v_fmt; int /*<<< orphan*/  sensor; struct cal_fmt** active_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int FUNC0 (struct cal_ctx*,struct cal_fmt const*,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cal_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enum_frame_size ; 
 struct cal_fmt* FUNC2 (struct cal_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pad ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_frame_size_enum*) ; 
 struct cal_ctx* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
			       struct v4l2_format *f)
{
	struct cal_ctx *ctx = FUNC4(file);
	const struct cal_fmt *fmt;
	struct v4l2_subdev_frame_size_enum fse;
	int ret, found;

	fmt = FUNC2(ctx, f->fmt.pix.pixelformat);
	if (!fmt) {
		FUNC1(3, ctx, "Fourcc format (0x%08x) not found.\n",
			f->fmt.pix.pixelformat);

		/* Just get the first one enumerated */
		fmt = ctx->active_fmt[0];
		f->fmt.pix.pixelformat = fmt->fourcc;
	}

	f->fmt.pix.field = ctx->v_fmt.fmt.pix.field;

	/* check for/find a valid width/height */
	ret = 0;
	found = false;
	fse.pad = 0;
	fse.code = fmt->code;
	fse.which = V4L2_SUBDEV_FORMAT_ACTIVE;
	for (fse.index = 0; ; fse.index++) {
		ret = FUNC3(ctx->sensor, pad, enum_frame_size,
				       NULL, &fse);
		if (ret)
			break;

		if ((f->fmt.pix.width == fse.max_width) &&
		    (f->fmt.pix.height == fse.max_height)) {
			found = true;
			break;
		} else if ((f->fmt.pix.width >= fse.min_width) &&
			 (f->fmt.pix.width <= fse.max_width) &&
			 (f->fmt.pix.height >= fse.min_height) &&
			 (f->fmt.pix.height <= fse.max_height)) {
			found = true;
			break;
		}
	}

	if (!found) {
		/* use existing values as default */
		f->fmt.pix.width = ctx->v_fmt.fmt.pix.width;
		f->fmt.pix.height =  ctx->v_fmt.fmt.pix.height;
	}

	/*
	 * Use current colorspace for now, it will get
	 * updated properly during s_fmt
	 */
	f->fmt.pix.colorspace = ctx->v_fmt.fmt.pix.colorspace;
	return FUNC0(ctx, fmt, f);
}