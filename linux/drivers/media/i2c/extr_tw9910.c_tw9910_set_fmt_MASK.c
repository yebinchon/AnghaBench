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
struct v4l2_mbus_framefmt {scalar_t__ field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_scale_ctrl {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct tw9910_priv {int /*<<< orphan*/  norm; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MEDIA_BUS_FMT_UYVY8_2X8 ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
 scalar_t__ V4L2_FIELD_ANY ; 
 scalar_t__ V4L2_FIELD_INTERLACED_BT ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct tw9910_priv* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ; 
 struct tw9910_scale_ctrl* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *format)
{
	struct v4l2_mbus_framefmt *mf = &format->format;
	struct i2c_client *client = FUNC4(sd);
	struct tw9910_priv *priv = FUNC1(client);
	const struct tw9910_scale_ctrl *scale;

	if (format->pad)
		return -EINVAL;

	if (mf->field == V4L2_FIELD_ANY) {
		mf->field = V4L2_FIELD_INTERLACED_BT;
	} else if (mf->field != V4L2_FIELD_INTERLACED_BT) {
		FUNC0(&client->dev, "Field type %d invalid\n", mf->field);
		return -EINVAL;
	}

	mf->code = MEDIA_BUS_FMT_UYVY8_2X8;
	mf->colorspace = V4L2_COLORSPACE_SMPTE170M;

	/* Select suitable norm. */
	scale = FUNC3(priv->norm, mf->width, mf->height);
	if (!scale)
		return -EINVAL;

	mf->width	= scale->width;
	mf->height	= scale->height;

	if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
		return FUNC2(sd, mf);

	cfg->try_fmt = *mf;

	return 0;
}