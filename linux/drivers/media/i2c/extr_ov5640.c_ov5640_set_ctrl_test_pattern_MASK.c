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
 int /*<<< orphan*/  OV5640_REG_PRE_ISP_TEST_SET1 ; 
 int FUNC0 (struct ov5640_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * test_pattern_val ; 

__attribute__((used)) static int FUNC1(struct ov5640_dev *sensor, int value)
{
	return FUNC0(sensor, OV5640_REG_PRE_ISP_TEST_SET1,
				test_pattern_val[value]);
}