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
struct csiphy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csiphy_device*) ; 
 int FUNC1 (struct csiphy_device*) ; 
 struct csiphy_device* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int enable)
{
	struct csiphy_device *csiphy = FUNC2(sd);
	int ret = 0;

	if (enable)
		ret = FUNC1(csiphy);
	else
		FUNC0(csiphy);

	return ret;
}