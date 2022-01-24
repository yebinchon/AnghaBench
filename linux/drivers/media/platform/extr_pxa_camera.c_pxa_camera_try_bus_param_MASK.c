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
struct v4l2_mbus_config {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct pxa_camera_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  V4L2_MBUS_PARALLEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  g_mbus_config ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_camera_dev*) ; 
 unsigned long FUNC2 (struct v4l2_mbus_config*,unsigned long) ; 
 int FUNC3 (struct pxa_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_config*) ; 
 int FUNC4 (struct pxa_camera_dev*,unsigned char,unsigned long*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC5(struct pxa_camera_dev *pcdev,
				    unsigned char buswidth)
{
	struct v4l2_mbus_config cfg = {.type = V4L2_MBUS_PARALLEL,};
	unsigned long bus_flags, common_flags;
	int ret = FUNC4(pcdev, buswidth, &bus_flags);

	if (ret < 0)
		return ret;

	ret = FUNC3(pcdev, video, g_mbus_config, &cfg);
	if (!ret) {
		common_flags = FUNC2(&cfg,
							  bus_flags);
		if (!common_flags) {
			FUNC0(FUNC1(pcdev),
				 "Flags incompatible: camera 0x%x, host 0x%lx\n",
				 cfg.flags, bus_flags);
			return -EINVAL;
		}
	} else if (ret == -ENOIOCTLCMD) {
		ret = 0;
	}

	return ret;
}