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
struct v4l2_subdev_format {int /*<<< orphan*/  which; int /*<<< orphan*/  pad; int /*<<< orphan*/  format; } ;
struct v4l2_subdev {int dummy; } ;
struct imx214 {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct imx214*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct imx214* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *format)
{
	struct imx214 *imx214 = FUNC3(sd);

	FUNC1(&imx214->mutex);
	format->format = *FUNC0(imx214, cfg, format->pad,
						  format->which);
	FUNC2(&imx214->mutex);

	return 0;
}