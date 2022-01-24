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
struct v4l2_subdev {int dummy; } ;
struct ov5645 {int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrls; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5645_IO_MIPI_CTRL00 ; 
 int /*<<< orphan*/  OV5645_SYSTEM_CTRL0 ; 
 int OV5645_SYSTEM_CTRL0_START ; 
 int OV5645_SYSTEM_CTRL0_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct ov5645*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ov5645*,int /*<<< orphan*/ ,int) ; 
 struct ov5645* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev, int enable)
{
	struct ov5645 *ov5645 = FUNC3(subdev);
	int ret;

	if (enable) {
		ret = FUNC1(ov5645,
					ov5645->current_mode->data,
					ov5645->current_mode->data_size);
		if (ret < 0) {
			FUNC0(ov5645->dev, "could not set mode %dx%d\n",
				ov5645->current_mode->width,
				ov5645->current_mode->height);
			return ret;
		}
		ret = FUNC4(&ov5645->ctrls);
		if (ret < 0) {
			FUNC0(ov5645->dev, "could not sync v4l2 controls\n");
			return ret;
		}

		ret = FUNC2(ov5645, OV5645_IO_MIPI_CTRL00, 0x45);
		if (ret < 0)
			return ret;

		ret = FUNC2(ov5645, OV5645_SYSTEM_CTRL0,
				       OV5645_SYSTEM_CTRL0_START);
		if (ret < 0)
			return ret;
	} else {
		ret = FUNC2(ov5645, OV5645_IO_MIPI_CTRL00, 0x40);
		if (ret < 0)
			return ret;

		ret = FUNC2(ov5645, OV5645_SYSTEM_CTRL0,
				       OV5645_SYSTEM_CTRL0_STOP);
		if (ret < 0)
			return ret;
	}

	return 0;
}