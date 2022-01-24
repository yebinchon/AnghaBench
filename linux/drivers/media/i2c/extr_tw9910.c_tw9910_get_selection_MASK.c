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
struct TYPE_2__ {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {scalar_t__ which; scalar_t__ target; TYPE_1__ r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int norm; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_SEL_TGT_CROP_BOUNDS ; 
 int V4L2_STD_NTSC ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct tw9910_priv* FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				struct v4l2_subdev_pad_config *cfg,
				struct v4l2_subdev_selection *sel)
{
	struct i2c_client *client = FUNC1(sd);
	struct tw9910_priv *priv = FUNC0(client);

	if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
		return -EINVAL;
	/* Only CROP, CROP_DEFAULT and CROP_BOUNDS are supported. */
	if (sel->target > V4L2_SEL_TGT_CROP_BOUNDS)
		return -EINVAL;

	sel->r.left	= 0;
	sel->r.top	= 0;
	if (priv->norm & V4L2_STD_NTSC) {
		sel->r.width	= 640;
		sel->r.height	= 480;
	} else {
		sel->r.width	= 768;
		sel->r.height	= 576;
	}

	return 0;
}