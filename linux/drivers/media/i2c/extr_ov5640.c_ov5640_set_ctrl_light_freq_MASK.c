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
 int /*<<< orphan*/  OV5640_REG_HZ5060_CTRL00 ; 
 int /*<<< orphan*/  OV5640_REG_HZ5060_CTRL01 ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_50HZ ; 
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor, int value)
{
	int ret;

	ret = FUNC1(sensor, OV5640_REG_HZ5060_CTRL01, FUNC0(7),
			     (value == V4L2_CID_POWER_LINE_FREQUENCY_AUTO) ?
			     0 : FUNC0(7));
	if (ret)
		return ret;

	return FUNC1(sensor, OV5640_REG_HZ5060_CTRL00, FUNC0(2),
			      (value == V4L2_CID_POWER_LINE_FREQUENCY_50HZ) ?
			      FUNC0(2) : 0);
}