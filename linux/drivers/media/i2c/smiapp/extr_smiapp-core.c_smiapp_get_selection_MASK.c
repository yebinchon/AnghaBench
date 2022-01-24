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
struct v4l2_subdev_selection {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_sensor {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct smiapp_sensor* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *subdev,
				struct v4l2_subdev_pad_config *cfg,
				struct v4l2_subdev_selection *sel)
{
	struct smiapp_sensor *sensor = FUNC3(subdev);
	int rval;

	FUNC1(&sensor->mutex);
	rval = FUNC0(subdev, cfg, sel);
	FUNC2(&sensor->mutex);

	return rval;
}