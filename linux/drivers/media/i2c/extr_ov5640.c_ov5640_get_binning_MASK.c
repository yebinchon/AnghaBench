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
typedef  int u8 ;
struct ov5640_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OV5640_REG_TIMING_TC_REG21 ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor)
{
	u8 temp;
	int ret;

	ret = FUNC1(sensor, OV5640_REG_TIMING_TC_REG21, &temp);
	if (ret)
		return ret;

	return temp & FUNC0(0);
}