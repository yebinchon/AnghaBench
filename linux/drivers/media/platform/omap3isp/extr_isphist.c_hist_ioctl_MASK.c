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
struct v4l2_subdev {int dummy; } ;
struct ispstat {int dummy; } ;

/* Variables and functions */
 long ENOIOCTLCMD ; 
#define  VIDIOC_OMAP3ISP_HIST_CFG 131 
#define  VIDIOC_OMAP3ISP_STAT_EN 130 
#define  VIDIOC_OMAP3ISP_STAT_REQ 129 
#define  VIDIOC_OMAP3ISP_STAT_REQ_TIME32 128 
 long FUNC0 (struct ispstat*,void*) ; 
 long FUNC1 (struct ispstat*,int) ; 
 long FUNC2 (struct ispstat*,void*) ; 
 long FUNC3 (struct ispstat*,void*) ; 
 struct ispstat* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static long FUNC5(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
	struct ispstat *stat = FUNC4(sd);

	switch (cmd) {
	case VIDIOC_OMAP3ISP_HIST_CFG:
		return FUNC0(stat, arg);
	case VIDIOC_OMAP3ISP_STAT_REQ:
		return FUNC2(stat, arg);
	case VIDIOC_OMAP3ISP_STAT_REQ_TIME32:
		return FUNC3(stat, arg);
	case VIDIOC_OMAP3ISP_STAT_EN: {
		int *en = arg;
		return FUNC1(stat, !!*en);
	}
	}

	return -ENOIOCTLCMD;

}