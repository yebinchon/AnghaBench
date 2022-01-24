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
struct v4l2_mbus_framefmt {unsigned int width; unsigned int height; } ;
struct omap3isp_ccdc_lsc_config {unsigned int gain_mode_m; unsigned int gain_mode_n; int offset; int initial_x; int initial_y; unsigned int size; } ;
struct isp_device {int /*<<< orphan*/  dev; } ;
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_PAD_SINK ; 
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct isp_ccdc_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct isp_device* FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static int FUNC3(struct isp_ccdc_device *ccdc,
				    struct omap3isp_ccdc_lsc_config *lsc_cfg)
{
	struct isp_device *isp = FUNC2(ccdc);
	struct v4l2_mbus_framefmt *format;
	unsigned int paxel_width, paxel_height;
	unsigned int paxel_shift_x, paxel_shift_y;
	unsigned int min_width, min_height, min_size;
	unsigned int input_width, input_height;

	paxel_shift_x = lsc_cfg->gain_mode_m;
	paxel_shift_y = lsc_cfg->gain_mode_n;

	if ((paxel_shift_x < 2) || (paxel_shift_x > 6) ||
	    (paxel_shift_y < 2) || (paxel_shift_y > 6)) {
		FUNC1(isp->dev, "CCDC: LSC: Invalid paxel size\n");
		return -EINVAL;
	}

	if (lsc_cfg->offset & 3) {
		FUNC1(isp->dev,
			"CCDC: LSC: Offset must be a multiple of 4\n");
		return -EINVAL;
	}

	if ((lsc_cfg->initial_x & 1) || (lsc_cfg->initial_y & 1)) {
		FUNC1(isp->dev, "CCDC: LSC: initial_x and y must be even\n");
		return -EINVAL;
	}

	format = FUNC0(ccdc, NULL, CCDC_PAD_SINK,
				   V4L2_SUBDEV_FORMAT_ACTIVE);
	input_width = format->width;
	input_height = format->height;

	/* Calculate minimum bytesize for validation */
	paxel_width = 1 << paxel_shift_x;
	min_width = ((input_width + lsc_cfg->initial_x + paxel_width - 1)
		     >> paxel_shift_x) + 1;

	paxel_height = 1 << paxel_shift_y;
	min_height = ((input_height + lsc_cfg->initial_y + paxel_height - 1)
		     >> paxel_shift_y) + 1;

	min_size = 4 * min_width * min_height;
	if (min_size > lsc_cfg->size) {
		FUNC1(isp->dev, "CCDC: LSC: too small table\n");
		return -EINVAL;
	}
	if (lsc_cfg->offset < (min_width * 4)) {
		FUNC1(isp->dev, "CCDC: LSC: Offset is too small\n");
		return -EINVAL;
	}
	if ((lsc_cfg->size / lsc_cfg->offset) < min_height) {
		FUNC1(isp->dev, "CCDC: LSC: Wrong size/offset combination\n");
		return -EINVAL;
	}
	return 0;
}