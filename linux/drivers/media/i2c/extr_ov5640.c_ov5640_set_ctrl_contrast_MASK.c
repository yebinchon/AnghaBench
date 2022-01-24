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
struct ov5640_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OV5640_REG_SDE_CTRL0 ; 
 int /*<<< orphan*/  OV5640_REG_SDE_CTRL5 ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ov5640_dev *sensor, int value)
{
	int ret;

	if (value) {
		ret = FUNC1(sensor, OV5640_REG_SDE_CTRL0,
				     FUNC0(2), FUNC0(2));
		if (ret)
			return ret;
		ret = FUNC2(sensor, OV5640_REG_SDE_CTRL5,
				       value & 0xff);
	} else {
		ret = FUNC1(sensor, OV5640_REG_SDE_CTRL0, FUNC0(2), 0);
	}

	return ret;
}