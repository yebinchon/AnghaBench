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
struct rvin_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  s_power ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC1 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC2(struct rvin_dev *vin, bool on)
{
	struct v4l2_subdev *sd = FUNC1(vin);
	int power = on ? 1 : 0;
	int ret;

	ret = FUNC0(sd, core, s_power, power);
	if (ret < 0 && ret != -ENOIOCTLCMD && ret != -ENODEV)
		return ret;

	return 0;
}