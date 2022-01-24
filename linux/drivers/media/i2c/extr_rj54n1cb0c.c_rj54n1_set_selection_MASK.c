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
struct v4l2_rect {int width; int height; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int width; int height; } ;
struct rj54n1 {int resize; int width; int height; TYPE_1__ rect; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RJ54N1_MAX_HEIGHT ; 
 int /*<<< orphan*/  RJ54N1_MAX_WIDTH ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int,int) ; 
 int FUNC1 (struct v4l2_subdev*,int*,int*,int*,int*) ; 
 struct rj54n1* FUNC2 (struct i2c_client*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
				struct v4l2_subdev_pad_config *cfg,
				struct v4l2_subdev_selection *sel)
{
	struct i2c_client *client = FUNC3(sd);
	struct rj54n1 *rj54n1 = FUNC2(client);
	const struct v4l2_rect *rect = &sel->r;
	int output_w, output_h, input_w = rect->width, input_h = rect->height;
	int ret;

	if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE ||
	    sel->target != V4L2_SEL_TGT_CROP)
		return -EINVAL;

	/* arbitrary minimum width and height, edges unimportant */
	FUNC4(&input_w, 8, RJ54N1_MAX_WIDTH, 0,
			      &input_h, 8, RJ54N1_MAX_HEIGHT, 0, 0);

	output_w = (input_w * 1024 + rj54n1->resize / 2) / rj54n1->resize;
	output_h = (input_h * 1024 + rj54n1->resize / 2) / rj54n1->resize;

	FUNC0(&client->dev, "Scaling for %dx%d : %u = %dx%d\n",
		input_w, input_h, rj54n1->resize, output_w, output_h);

	ret = FUNC1(sd, &input_w, &input_h, &output_w, &output_h);
	if (ret < 0)
		return ret;

	rj54n1->width		= output_w;
	rj54n1->height		= output_h;
	rj54n1->resize		= ret;
	rj54n1->rect.width	= input_w;
	rj54n1->rect.height	= input_h;

	return 0;
}