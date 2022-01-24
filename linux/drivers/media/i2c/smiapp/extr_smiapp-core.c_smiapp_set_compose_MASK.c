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
struct v4l2_rect {scalar_t__ left; scalar_t__ top; } ;
struct v4l2_subdev_selection {int /*<<< orphan*/  which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct smiapp_subdev {int dummy; } ;
struct smiapp_sensor {struct smiapp_subdev* binner; } ;

/* Variables and functions */
 int SMIAPP_PADS ; 
 int /*<<< orphan*/  V4L2_SEL_TGT_COMPOSE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_rect**,struct v4l2_rect**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*,struct v4l2_rect**,struct v4l2_rect*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*,struct v4l2_rect**,struct v4l2_rect*) ; 
 int FUNC4 (struct smiapp_sensor*) ; 
 struct smiapp_sensor* FUNC5 (struct v4l2_subdev*) ; 
 struct smiapp_subdev* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *subdev,
			      struct v4l2_subdev_pad_config *cfg,
			      struct v4l2_subdev_selection *sel)
{
	struct smiapp_sensor *sensor = FUNC5(subdev);
	struct smiapp_subdev *ssd = FUNC6(subdev);
	struct v4l2_rect *comp, *crops[SMIAPP_PADS];

	FUNC0(subdev, cfg, crops, &comp, sel->which);

	sel->r.top = 0;
	sel->r.left = 0;

	if (ssd == sensor->binner)
		FUNC2(subdev, cfg, sel, crops, comp);
	else
		FUNC3(subdev, cfg, sel, crops, comp);

	*comp = sel->r;
	FUNC1(subdev, cfg, sel->which, V4L2_SEL_TGT_COMPOSE);

	if (sel->which == V4L2_SUBDEV_FORMAT_ACTIVE)
		return FUNC4(sensor);

	return 0;
}