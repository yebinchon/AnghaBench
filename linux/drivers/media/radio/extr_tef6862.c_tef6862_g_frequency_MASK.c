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
struct tef6862_state {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 struct tef6862_state* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd, struct v4l2_frequency *f)
{
	struct tef6862_state *state = FUNC0(sd);

	if (f->tuner != 0)
		return -EINVAL;
	f->type = V4L2_TUNER_RADIO;
	f->frequency = state->freq;
	return 0;
}