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
struct v4l2_rect {int dummy; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t112_priv {TYPE_1__* format; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SEL_TGT_CROP ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int FUNC0 (struct mt9t112_priv*,struct v4l2_rect const*,int /*<<< orphan*/ ) ; 
 struct mt9t112_priv* FUNC1 (struct i2c_client*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				 struct v4l2_subdev_pad_config *cfg,
				 struct v4l2_subdev_selection *sel)
{
	struct i2c_client *client = FUNC2(sd);
	struct mt9t112_priv *priv = FUNC1(client);
	const struct v4l2_rect *rect = &sel->r;

	if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE ||
	    sel->target != V4L2_SEL_TGT_CROP)
		return -EINVAL;

	return FUNC0(priv, rect, priv->format->code);
}