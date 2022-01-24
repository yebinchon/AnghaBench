#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct em28xx_v4l2 {unsigned int width; unsigned int height; int /*<<< orphan*/  vscale; int /*<<< orphan*/  hscale; struct em28xx_fmt* format; } ;
struct em28xx_fmt {int dummy; } ;
struct em28xx {struct em28xx_v4l2* v4l2; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct em28xx*) ; 
 struct em28xx_fmt* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct em28xx*,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct em28xx *dev, unsigned int fourcc,
				   unsigned int width, unsigned int height)
{
	struct em28xx_fmt     *fmt;
	struct em28xx_v4l2    *v4l2 = dev->v4l2;

	fmt = FUNC1(fourcc);
	if (!fmt)
		return -EINVAL;

	v4l2->format = fmt;
	v4l2->width  = width;
	v4l2->height = height;

	/* set new image size */
	FUNC2(dev, v4l2->width, v4l2->height,
		      &v4l2->hscale, &v4l2->vscale);

	FUNC0(dev);

	return 0;
}