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
struct ov7251 {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrls; TYPE_1__* current_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV7251_SC_MODE_SELECT ; 
 int /*<<< orphan*/  OV7251_SC_MODE_SELECT_STREAMING ; 
 int /*<<< orphan*/  OV7251_SC_MODE_SELECT_SW_STANDBY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ov7251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ov7251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov7251* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *subdev, int enable)
{
	struct ov7251 *ov7251 = FUNC6(subdev);
	int ret;

	FUNC2(&ov7251->lock);

	if (enable) {
		ret = FUNC4(ov7251,
					ov7251->current_mode->data,
					ov7251->current_mode->data_size);
		if (ret < 0) {
			FUNC1(ov7251->dev, "could not set mode %dx%d\n",
				ov7251->current_mode->width,
				ov7251->current_mode->height);
			goto exit;
		}
		ret = FUNC0(&ov7251->ctrls);
		if (ret < 0) {
			FUNC1(ov7251->dev, "could not sync v4l2 controls\n");
			goto exit;
		}
		ret = FUNC5(ov7251, OV7251_SC_MODE_SELECT,
				       OV7251_SC_MODE_SELECT_STREAMING);
	} else {
		ret = FUNC5(ov7251, OV7251_SC_MODE_SELECT,
				       OV7251_SC_MODE_SELECT_SW_STANDBY);
	}

exit:
	FUNC3(&ov7251->lock);

	return ret;
}