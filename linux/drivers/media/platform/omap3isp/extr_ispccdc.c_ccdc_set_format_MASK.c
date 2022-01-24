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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  which; struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ top; scalar_t__ left; } ;
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_PAD_SINK ; 
 int /*<<< orphan*/  CCDC_PAD_SOURCE_OF ; 
 int /*<<< orphan*/  CCDC_PAD_SOURCE_VP ; 
 int EINVAL ; 
 struct v4l2_rect* FUNC0 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,struct v4l2_mbus_framefmt*,struct v4l2_rect*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccdc_device*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ ) ; 
 struct isp_ccdc_device* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
			   struct v4l2_subdev_format *fmt)
{
	struct isp_ccdc_device *ccdc = FUNC4(sd);
	struct v4l2_mbus_framefmt *format;
	struct v4l2_rect *crop;

	format = FUNC1(ccdc, cfg, fmt->pad, fmt->which);
	if (format == NULL)
		return -EINVAL;

	FUNC3(ccdc, cfg, fmt->pad, &fmt->format, fmt->which);
	*format = fmt->format;

	/* Propagate the format from sink to source */
	if (fmt->pad == CCDC_PAD_SINK) {
		/* Reset the crop rectangle. */
		crop = FUNC0(ccdc, cfg, fmt->which);
		crop->left = 0;
		crop->top = 0;
		crop->width = fmt->format.width;
		crop->height = fmt->format.height;

		FUNC2(ccdc, &fmt->format, crop);

		/* Update the source formats. */
		format = FUNC1(ccdc, cfg, CCDC_PAD_SOURCE_OF,
					   fmt->which);
		*format = fmt->format;
		FUNC3(ccdc, cfg, CCDC_PAD_SOURCE_OF, format,
				fmt->which);

		format = FUNC1(ccdc, cfg, CCDC_PAD_SOURCE_VP,
					   fmt->which);
		*format = fmt->format;
		FUNC3(ccdc, cfg, CCDC_PAD_SOURCE_VP, format,
				fmt->which);
	}

	return 0;
}