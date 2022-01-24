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
struct v4l2_dv_timings_cap {int /*<<< orphan*/  pad; } ;
struct rvin_dev {TYPE_1__* parallel; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sink_pad; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dv_timings_cap ; 
 int /*<<< orphan*/  pad ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dv_timings_cap*) ; 
 struct rvin_dev* FUNC1 (struct file*) ; 
 struct v4l2_subdev* FUNC2 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv_fh,
			       struct v4l2_dv_timings_cap *cap)
{
	struct rvin_dev *vin = FUNC1(file);
	struct v4l2_subdev *sd = FUNC2(vin);
	int ret;

	if (cap->pad)
		return -EINVAL;

	cap->pad = vin->parallel->sink_pad;

	ret = FUNC0(sd, pad, dv_timings_cap, cap);

	cap->pad = 0;

	return ret;
}