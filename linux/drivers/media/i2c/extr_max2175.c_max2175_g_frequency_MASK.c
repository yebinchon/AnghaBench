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
struct v4l2_frequency {scalar_t__ tuner; int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct max2175 {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RF ; 
 struct max2175* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd,
			       struct v4l2_frequency *vf)
{
	struct max2175 *ctx = FUNC0(sd);
	int ret = 0;

	if (vf->tuner != 0)
		return -EINVAL;

	/* RF freq */
	vf->type = V4L2_TUNER_RF;
	vf->frequency = ctx->freq;

	return ret;
}