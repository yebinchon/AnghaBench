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
struct pxa_camera_dev {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  s_power ; 
 int FUNC2 (struct pxa_camera_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct pxa_camera_dev *pcdev, int on)
{
	int ret;

	ret = FUNC2(pcdev, core, s_power, on);
	if (ret == -ENOIOCTLCMD)
		ret = 0;
	if (ret) {
		FUNC0(FUNC1(pcdev),
			 "Failed to put subdevice in %s mode: %d\n",
			 on ? "normal operation" : "power saving", ret);
	}

	return ret;
}