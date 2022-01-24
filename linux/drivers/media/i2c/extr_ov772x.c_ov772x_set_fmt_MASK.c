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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  code; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ov772x_win_size {TYPE_1__ rect; } ;
struct ov772x_priv {scalar_t__ power_count; int /*<<< orphan*/  lock; struct ov772x_color_format const* cfmt; struct ov772x_win_size const* win; scalar_t__ streaming; } ;
struct ov772x_color_format {int /*<<< orphan*/  colorspace; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  V4L2_QUANTIZATION_DEFAULT ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  V4L2_XFER_FUNC_DEFAULT ; 
 int /*<<< orphan*/  V4L2_YCBCR_ENC_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_mbus_framefmt*,struct ov772x_color_format const**,struct ov772x_win_size const**) ; 
 int FUNC3 (struct ov772x_priv*,struct ov772x_color_format const*,struct ov772x_win_size const*) ; 
 struct ov772x_priv* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *format)
{
	struct ov772x_priv *priv = FUNC4(sd);
	struct v4l2_mbus_framefmt *mf = &format->format;
	const struct ov772x_color_format *cfmt;
	const struct ov772x_win_size *win;
	int ret = 0;

	if (format->pad)
		return -EINVAL;

	FUNC2(mf, &cfmt, &win);

	mf->code = cfmt->code;
	mf->width = win->rect.width;
	mf->height = win->rect.height;
	mf->field = V4L2_FIELD_NONE;
	mf->colorspace = cfmt->colorspace;
	mf->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
	mf->quantization = V4L2_QUANTIZATION_DEFAULT;
	mf->xfer_func = V4L2_XFER_FUNC_DEFAULT;

	if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
		cfg->try_fmt = *mf;
		return 0;
	}

	FUNC0(&priv->lock);

	if (priv->streaming) {
		ret = -EBUSY;
		goto error;
	}

	/*
	 * If the device is not powered up by the host driver do
	 * not apply any changes to H/W at this time. Instead
	 * the format will be restored right after power-up.
	 */
	if (priv->power_count > 0) {
		ret = FUNC3(priv, cfmt, win);
		if (ret < 0)
			goto error;
	}
	priv->win = win;
	priv->cfmt = cfmt;

error:
	FUNC1(&priv->lock);

	return ret;
}