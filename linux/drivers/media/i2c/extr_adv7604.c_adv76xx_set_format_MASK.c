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
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct adv76xx_state {scalar_t__ source_pad; struct adv76xx_format_info const* format; } ;
struct adv76xx_format_info {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_YUYV8_2X8 ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (struct adv76xx_state*,TYPE_1__*) ; 
 struct adv76xx_format_info* FUNC1 (struct adv76xx_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adv76xx_state*) ; 
 struct adv76xx_state* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			      struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_format *format)
{
	struct adv76xx_state *state = FUNC3(sd);
	const struct adv76xx_format_info *info;

	if (format->pad != state->source_pad)
		return -EINVAL;

	info = FUNC1(state, format->format.code);
	if (!info)
		info = FUNC1(state, MEDIA_BUS_FMT_YUYV8_2X8);

	FUNC0(state, &format->format);
	format->format.code = info->code;

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
		struct v4l2_mbus_framefmt *fmt;

		fmt = FUNC4(sd, cfg, format->pad);
		fmt->code = format->format.code;
	} else {
		state->format = info;
		FUNC2(state);
	}

	return 0;
}