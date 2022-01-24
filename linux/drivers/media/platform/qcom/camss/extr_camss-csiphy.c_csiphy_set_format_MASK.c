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
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct csiphy_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MSM_CSIPHY_PAD_SINK ; 
 int /*<<< orphan*/  MSM_CSIPHY_PAD_SRC ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct csiphy_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csiphy_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ ) ; 
 struct csiphy_device* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
			     struct v4l2_subdev_pad_config *cfg,
			     struct v4l2_subdev_format *fmt)
{
	struct csiphy_device *csiphy = FUNC2(sd);
	struct v4l2_mbus_framefmt *format;

	format = FUNC0(csiphy, cfg, fmt->pad, fmt->which);
	if (format == NULL)
		return -EINVAL;

	FUNC1(csiphy, cfg, fmt->pad, &fmt->format, fmt->which);
	*format = fmt->format;

	/* Propagate the format from sink to source */
	if (fmt->pad == MSM_CSIPHY_PAD_SINK) {
		format = FUNC0(csiphy, cfg, MSM_CSIPHY_PAD_SRC,
					     fmt->which);

		*format = fmt->format;
		FUNC1(csiphy, cfg, MSM_CSIPHY_PAD_SRC, format,
				  fmt->which);
	}

	return 0;
}