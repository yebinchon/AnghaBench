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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_csi2 {struct adv748x_state* state; } ;

/* Variables and functions */
 scalar_t__ ADV748X_CSI2_SINK ; 
 scalar_t__ ADV748X_CSI2_SOURCE ; 
 int EINVAL ; 
 void* FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct adv748x_csi2* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				   struct v4l2_subdev_pad_config *cfg,
				   struct v4l2_subdev_format *sdformat)
{
	struct adv748x_csi2 *tx = FUNC1(sd);
	struct adv748x_state *state = tx->state;
	struct v4l2_mbus_framefmt *mbusformat;
	int ret = 0;

	mbusformat = FUNC0(sd, cfg, sdformat->pad,
						 sdformat->which);
	if (!mbusformat)
		return -EINVAL;

	FUNC2(&state->mutex);

	if (sdformat->pad == ADV748X_CSI2_SOURCE) {
		const struct v4l2_mbus_framefmt *sink_fmt;

		sink_fmt = FUNC0(sd, cfg,
						       ADV748X_CSI2_SINK,
						       sdformat->which);

		if (!sink_fmt) {
			ret = -EINVAL;
			goto unlock;
		}

		sdformat->format = *sink_fmt;
	}

	*mbusformat = sdformat->format;

unlock:
	FUNC3(&state->mutex);

	return ret;
}