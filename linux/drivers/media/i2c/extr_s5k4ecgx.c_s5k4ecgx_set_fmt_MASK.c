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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx_pixfmt {int dummy; } ;
struct s5k4ecgx_frmsize {int dummy; } ;
struct s5k4ecgx {int set_params; int /*<<< orphan*/  lock; struct s5k4ecgx_pixfmt const* curr_pixfmt; struct s5k4ecgx_frmsize const* curr_frmsize; int /*<<< orphan*/  streaming; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_JPEG ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s5k4ecgx_pixfmt* FUNC2 (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*,struct s5k4ecgx_frmsize const**) ; 
 struct s5k4ecgx* FUNC4 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt* FUNC5 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			    struct v4l2_subdev_format *fmt)
{
	struct s5k4ecgx *priv = FUNC4(sd);
	const struct s5k4ecgx_frmsize *fsize = NULL;
	const struct s5k4ecgx_pixfmt *pf;
	struct v4l2_mbus_framefmt *mf;
	int ret = 0;

	pf = FUNC2(sd, &fmt->format);
	FUNC3(&fmt->format, &fsize);
	fmt->format.colorspace = V4L2_COLORSPACE_JPEG;
	fmt->format.field = V4L2_FIELD_NONE;

	if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
		if (cfg) {
			mf = FUNC5(sd, cfg, 0);
			*mf = fmt->format;
		}
		return 0;
	}

	FUNC0(&priv->lock);
	if (!priv->streaming) {
		priv->curr_frmsize = fsize;
		priv->curr_pixfmt = pf;
		priv->set_params = 1;
	} else {
		ret = -EBUSY;
	}
	FUNC1(&priv->lock);

	return ret;
}