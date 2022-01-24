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
struct TYPE_6__ {int min_width; int min_height; unsigned int max_width; unsigned int max_height; int step_width; int step_height; } ;
struct TYPE_5__ {unsigned int width; unsigned int height; } ;
struct v4l2_frmsizeenum {int index; TYPE_3__ stepwise; int /*<<< orphan*/  type; TYPE_2__ discrete; int /*<<< orphan*/  pixel_format; } ;
struct file {int dummy; } ;
struct em28xx_fmt {int dummy; } ;
struct TYPE_4__ {scalar_t__ is_em2800; } ;
struct em28xx {TYPE_1__ board; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EM28XX_HVSCALE_MAX ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_DISCRETE ; 
 int /*<<< orphan*/  V4L2_FRMSIZE_TYPE_STEPWISE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct em28xx_fmt* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct em28xx*) ; 
 unsigned int FUNC3 (struct em28xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 struct em28xx* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
				  struct v4l2_frmsizeenum *fsize)
{
	struct em28xx         *dev = FUNC5(file);
	struct em28xx_fmt     *fmt;
	unsigned int	      maxw = FUNC3(dev);
	unsigned int	      maxh = FUNC2(dev);

	fmt = FUNC1(fsize->pixel_format);
	if (!fmt) {
		FUNC0("Fourcc format (%08x) invalid.\n",
				fsize->pixel_format);
		return -EINVAL;
	}

	if (dev->board.is_em2800) {
		if (fsize->index > 1)
			return -EINVAL;
		fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
		fsize->discrete.width = maxw / (1 + fsize->index);
		fsize->discrete.height = maxh / (1 + fsize->index);
		return 0;
	}

	if (fsize->index != 0)
		return -EINVAL;

	/* Report a continuous range */
	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
	FUNC4(dev, EM28XX_HVSCALE_MAX, EM28XX_HVSCALE_MAX,
		      &fsize->stepwise.min_width, &fsize->stepwise.min_height);
	if (fsize->stepwise.min_width < 48)
		fsize->stepwise.min_width = 48;
	if (fsize->stepwise.min_height < 38)
		fsize->stepwise.min_height = 38;
	fsize->stepwise.max_width = maxw;
	fsize->stepwise.max_height = maxh;
	fsize->stepwise.step_width = 1;
	fsize->stepwise.step_height = 1;
	return 0;
}