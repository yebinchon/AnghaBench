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
struct v4l2_subdev_fh {int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct imx355 {int /*<<< orphan*/  mutex; TYPE_1__* cur_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct imx355*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct imx355* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
	struct imx355 *imx355 = FUNC3(sd);
	struct v4l2_mbus_framefmt *try_fmt =
		FUNC4(sd, fh->pad, 0);

	FUNC1(&imx355->mutex);

	/* Initialize try_fmt */
	try_fmt->width = imx355->cur_mode->width;
	try_fmt->height = imx355->cur_mode->height;
	try_fmt->code = FUNC0(imx355);
	try_fmt->field = V4L2_FIELD_NONE;

	FUNC2(&imx355->mutex);

	return 0;
}