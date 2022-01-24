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
struct viu_fmt {int depth; } ;
struct TYPE_3__ {int height; int width; int bytesperline; int sizeimage; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
 int /*<<< orphan*/  V4L2_FIELD_INTERLACED ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct viu_fmt* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_format *f)
{
	struct viu_fmt *fmt;
	unsigned int maxw, maxh;

	fmt = FUNC1(f->fmt.pix.pixelformat);
	if (!fmt) {
		FUNC0(1, "Fourcc format (0x%08x) invalid.",
			f->fmt.pix.pixelformat);
		return -EINVAL;
	}

	maxw  = FUNC3();
	maxh  = FUNC2();

	f->fmt.pix.field = V4L2_FIELD_INTERLACED;
	if (f->fmt.pix.height < 32)
		f->fmt.pix.height = 32;
	if (f->fmt.pix.height > maxh)
		f->fmt.pix.height = maxh;
	if (f->fmt.pix.width < 48)
		f->fmt.pix.width = 48;
	if (f->fmt.pix.width > maxw)
		f->fmt.pix.width = maxw;
	f->fmt.pix.width &= ~0x03;
	f->fmt.pix.bytesperline =
		(f->fmt.pix.width * fmt->depth) >> 3;
	f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
	f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

	return 0;
}