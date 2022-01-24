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
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct imx355 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct imx355*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct imx355* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_format *fmt)
{
	struct imx355 *imx355 = FUNC3(sd);
	int ret;

	FUNC1(&imx355->mutex);
	ret = FUNC0(imx355, cfg, fmt);
	FUNC2(&imx355->mutex);

	return ret;
}