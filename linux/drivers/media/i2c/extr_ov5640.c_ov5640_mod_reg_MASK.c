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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ov5640_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ov5640_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor, u16 reg,
			  u8 mask, u8 val)
{
	u8 readval;
	int ret;

	ret = FUNC0(sensor, reg, &readval);
	if (ret)
		return ret;

	readval &= ~mask;
	val &= mask;
	val |= readval;

	return FUNC1(sensor, reg, val);
}