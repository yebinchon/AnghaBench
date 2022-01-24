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
struct TYPE_4__ {unsigned int bus_width; } ;
struct vpfe_subdev_info {TYPE_1__ vpfe_param; } ;
struct TYPE_6__ {unsigned int bpp; } ;
struct TYPE_5__ {unsigned int bpp; } ;
struct vpfe_fmt {TYPE_3__ s; TYPE_2__ l; int /*<<< orphan*/  fourcc; } ;
struct vpfe_device {struct vpfe_subdev_info* current_subdev; } ;
struct v4l2_pix_format {int bytesperline; unsigned int width; int sizeimage; int height; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct vpfe_fmt* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_pix_format*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_pix_format*,struct v4l2_mbus_framefmt const*) ; 

__attribute__((used)) static void
FUNC6(struct vpfe_device *vpfe,
	    const struct v4l2_mbus_framefmt *mbus,
	    struct v4l2_pix_format *pix, unsigned int *bpp)
{
	struct vpfe_subdev_info *sdinfo = vpfe->current_subdev;
	unsigned int bus_width = sdinfo->vpfe_param.bus_width;
	struct vpfe_fmt *fmt;

	fmt = FUNC2(mbus->code);
	if (FUNC1(fmt == NULL)) {
		FUNC4("Invalid mbus code set\n");
		*bpp = 1;
		return;
	}

	FUNC3(pix, 0, sizeof(*pix));
	FUNC5(pix, mbus);
	pix->pixelformat = fmt->fourcc;
	*bpp = (bus_width == 10) ?  fmt->l.bpp : fmt->s.bpp;

	/* pitch should be 32 bytes aligned */
	pix->bytesperline = FUNC0(pix->width * *bpp, 32);
	pix->sizeimage = pix->bytesperline * pix->height;
}