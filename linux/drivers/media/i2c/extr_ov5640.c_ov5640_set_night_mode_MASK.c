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
 int /*<<< orphan*/  OV5640_REG_AEC_CTRL00 ; 
 int FUNC0 (struct ov5640_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ov5640_dev *sensor)
{
	 /* read HTS from register settings */
	u8 mode;
	int ret;

	ret = FUNC0(sensor, OV5640_REG_AEC_CTRL00, &mode);
	if (ret)
		return ret;
	mode &= 0xfb;
	return FUNC1(sensor, OV5640_REG_AEC_CTRL00, mode);
}