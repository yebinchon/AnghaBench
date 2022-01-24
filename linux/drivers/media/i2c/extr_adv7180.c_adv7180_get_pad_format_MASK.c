#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  field; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int /*<<< orphan*/  field; } ;

/* Variables and functions */
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,TYPE_1__*) ; 
 struct adv7180_state* FUNC1 (struct v4l2_subdev*) ; 
 TYPE_1__* FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				  struct v4l2_subdev_pad_config *cfg,
				  struct v4l2_subdev_format *format)
{
	struct adv7180_state *state = FUNC1(sd);

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
		format->format = *FUNC2(sd, cfg, 0);
	} else {
		FUNC0(sd, &format->format);
		format->format.field = state->field;
	}

	return 0;
}