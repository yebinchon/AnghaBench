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
struct v4l2_tuner {scalar_t__ index; int capability; int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct v4l2_subdev {int dummy; } ;
struct max2175 {TYPE_1__* bands_rf; } ;
struct TYPE_2__ {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_TUNER_CAP_1HZ ; 
 int V4L2_TUNER_CAP_FREQ_BANDS ; 
 int /*<<< orphan*/  V4L2_TUNER_RF ; 
 struct max2175* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
	struct max2175 *ctx = FUNC0(sd);

	if (vt->index > 0)
		return -EINVAL;

	FUNC1(vt->name, "RF", sizeof(vt->name));
	vt->type = V4L2_TUNER_RF;
	vt->capability = V4L2_TUNER_CAP_1HZ | V4L2_TUNER_CAP_FREQ_BANDS;
	vt->rangelow = ctx->bands_rf->rangelow;
	vt->rangehigh = ctx->bands_rf->rangehigh;

	return 0;
}