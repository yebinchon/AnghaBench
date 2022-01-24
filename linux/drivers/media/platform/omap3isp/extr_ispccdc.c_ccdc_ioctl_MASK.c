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
struct isp_ccdc_device {int /*<<< orphan*/  ioctl_lock; } ;

/* Variables and functions */
 long ENOIOCTLCMD ; 
#define  VIDIOC_OMAP3ISP_CCDC_CFG 128 
 int FUNC0 (struct isp_ccdc_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct isp_ccdc_device* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static long FUNC4(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
{
	struct isp_ccdc_device *ccdc = FUNC3(sd);
	int ret;

	switch (cmd) {
	case VIDIOC_OMAP3ISP_CCDC_CFG:
		FUNC1(&ccdc->ioctl_lock);
		ret = FUNC0(ccdc, arg);
		FUNC2(&ccdc->ioctl_lock);
		break;

	default:
		return -ENOIOCTLCMD;
	}

	return ret;
}