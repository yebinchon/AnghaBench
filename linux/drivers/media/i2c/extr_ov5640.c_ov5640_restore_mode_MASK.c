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
struct ov5640_dev {int /*<<< orphan*/  fmt; int /*<<< orphan*/ * last_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5640_REG_SYS_ROOT_DIVIDER ; 
 int /*<<< orphan*/  OV5640_SCLK2X_ROOT_DIV ; 
 int /*<<< orphan*/  OV5640_SCLK_ROOT_DIV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ov5640_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ov5640_mode_init_data ; 
 int FUNC3 (struct ov5640_dev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ov5640_dev*) ; 

__attribute__((used)) static int FUNC5(struct ov5640_dev *sensor)
{
	int ret;

	/* first load the initial register values */
	ret = FUNC1(sensor, &ov5640_mode_init_data);
	if (ret < 0)
		return ret;
	sensor->last_mode = &ov5640_mode_init_data;

	ret = FUNC2(sensor, OV5640_REG_SYS_ROOT_DIVIDER, 0x3f,
			     (FUNC0(OV5640_SCLK2X_ROOT_DIV) << 2) |
			     FUNC0(OV5640_SCLK_ROOT_DIV));
	if (ret)
		return ret;

	/* now restore the last capture mode */
	ret = FUNC4(sensor);
	if (ret < 0)
		return ret;

	return FUNC3(sensor, &sensor->fmt);
}