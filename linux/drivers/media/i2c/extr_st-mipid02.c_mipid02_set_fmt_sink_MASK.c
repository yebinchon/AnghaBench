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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct mipid02_dev {struct v4l2_mbus_framefmt fmt; } ;

/* Variables and functions */
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mipid02_dev* FUNC1 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct v4l2_subdev *sd,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_format *format)
{
	struct mipid02_dev *bridge = FUNC1(sd);
	struct v4l2_mbus_framefmt *fmt;

	format->format.code = FUNC0(format->format.code);

	if (format->which == V4L2_SUBDEV_FORMAT_TRY)
		fmt = FUNC2(sd, cfg, format->pad);
	else
		fmt = &bridge->fmt;

	*fmt = format->format;
}