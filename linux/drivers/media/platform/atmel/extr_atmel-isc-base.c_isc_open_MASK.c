#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct isc_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  fmt; TYPE_1__* current_subdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  core ; 
 int FUNC0 (struct isc_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int FUNC6 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct isc_device* FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct file *file)
{
	struct isc_device *isc = FUNC7(file);
	struct v4l2_subdev *sd = isc->current_subdev->sd;
	int ret;

	if (FUNC1(&isc->lock))
		return -ERESTARTSYS;

	ret = FUNC4(file);
	if (ret < 0)
		goto unlock;

	if (!FUNC3(file))
		goto unlock;

	ret = FUNC6(sd, core, s_power, 1);
	if (ret < 0 && ret != -ENOIOCTLCMD) {
		FUNC5(file);
		goto unlock;
	}

	ret = FUNC0(isc, &isc->fmt);
	if (ret) {
		FUNC6(sd, core, s_power, 0);
		FUNC5(file);
	}

unlock:
	FUNC2(&isc->lock);
	return ret;
}