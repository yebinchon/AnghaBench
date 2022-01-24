#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int field; unsigned int height; int width; int bytesperline; int sizeimage; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx88_core {int /*<<< orphan*/  tvnorm; } ;
struct cx8800_fmt {int depth; } ;
struct cx8800_dev {struct cx88_core* core; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
#define  V4L2_FIELD_BOTTOM 132 
 scalar_t__ FUNC0 (int) ; 
#define  V4L2_FIELD_INTERLACED 131 
#define  V4L2_FIELD_SEQ_BT 130 
#define  V4L2_FIELD_SEQ_TB 129 
#define  V4L2_FIELD_TOP 128 
 struct cx8800_fmt* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,unsigned int,int,unsigned int*,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx8800_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				  struct v4l2_format *f)
{
	struct cx8800_dev *dev = FUNC5(file);
	struct cx88_core *core = dev->core;
	const struct cx8800_fmt *fmt;
	enum v4l2_field   field;
	unsigned int      maxw, maxh;

	fmt = FUNC1(f->fmt.pix.pixelformat);
	if (!fmt)
		return -EINVAL;

	maxw = FUNC3(core->tvnorm);
	maxh = FUNC2(core->tvnorm);

	field = f->fmt.pix.field;

	switch (field) {
	case V4L2_FIELD_TOP:
	case V4L2_FIELD_BOTTOM:
	case V4L2_FIELD_INTERLACED:
	case V4L2_FIELD_SEQ_BT:
	case V4L2_FIELD_SEQ_TB:
		break;
	default:
		field = (f->fmt.pix.height > maxh / 2)
			? V4L2_FIELD_INTERLACED
			: V4L2_FIELD_BOTTOM;
		break;
	}
	if (FUNC0(field))
		maxh /= 2;

	FUNC4(&f->fmt.pix.width, 48, maxw, 2,
			      &f->fmt.pix.height, 32, maxh, 0, 0);
	f->fmt.pix.field = field;
	f->fmt.pix.bytesperline =
		(f->fmt.pix.width * fmt->depth) >> 3;
	f->fmt.pix.sizeimage =
		f->fmt.pix.height * f->fmt.pix.bytesperline;
	f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

	return 0;
}