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
struct v4l2_subdev_fh {int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct et8ek8_sensor {int dummy; } ;
struct et8ek8_reglist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET8EK8_REGLIST_MODE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_TRY ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct et8ek8_sensor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct et8ek8_reglist* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct et8ek8_reglist*,struct v4l2_mbus_framefmt*) ; 
 int FUNC3 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  meta_reglist ; 
 struct et8ek8_sensor* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_fh *fh)
{
	struct et8ek8_sensor *sensor = FUNC4(sd);
	struct v4l2_mbus_framefmt *format;
	struct et8ek8_reglist *reglist;

	reglist = FUNC1(&meta_reglist, ET8EK8_REGLIST_MODE);
	format = FUNC0(sensor, fh->pad, 0,
					 V4L2_SUBDEV_FORMAT_TRY);
	FUNC2(reglist, format);

	return FUNC3(sd, true);
}