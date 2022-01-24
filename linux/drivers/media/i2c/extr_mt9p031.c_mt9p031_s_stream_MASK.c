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
struct v4l2_subdev {int dummy; } ;
struct mt9p031 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9P031_OUTPUT_CONTROL_CEN ; 
 int FUNC0 (struct mt9p031*) ; 
 int FUNC1 (struct mt9p031*) ; 
 int FUNC2 (struct mt9p031*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt9p031*) ; 
 struct mt9p031* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *subdev, int enable)
{
	struct mt9p031 *mt9p031 = FUNC4(subdev);
	int ret;

	if (!enable) {
		/* Stop sensor readout */
		ret = FUNC2(mt9p031,
						 MT9P031_OUTPUT_CONTROL_CEN, 0);
		if (ret < 0)
			return ret;

		return FUNC0(mt9p031);
	}

	ret = FUNC3(mt9p031);
	if (ret < 0)
		return ret;

	/* Switch to master "normal" mode */
	ret = FUNC2(mt9p031, 0,
					 MT9P031_OUTPUT_CONTROL_CEN);
	if (ret < 0)
		return ret;

	return FUNC1(mt9p031);
}