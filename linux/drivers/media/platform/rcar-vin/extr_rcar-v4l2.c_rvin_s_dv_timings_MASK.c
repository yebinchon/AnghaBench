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
struct v4l2_dv_timings {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rvin_dev*) ; 
 int /*<<< orphan*/  s_dv_timings ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  video ; 
 struct rvin_dev* FUNC2 (struct file*) ; 
 struct v4l2_subdev* FUNC3 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv_fh,
			     struct v4l2_dv_timings *timings)
{
	struct rvin_dev *vin = FUNC2(file);
	struct v4l2_subdev *sd = FUNC3(vin);
	int ret;

	ret = FUNC1(sd, video, s_dv_timings, timings);
	if (ret)
		return ret;

	/* Changing the timings will change the width/height */
	return FUNC0(vin);
}