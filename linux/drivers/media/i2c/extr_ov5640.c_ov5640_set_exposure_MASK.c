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
typedef  int u32 ;
struct ov5640_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5640_REG_AEC_PK_EXPOSURE_HI ; 
 int /*<<< orphan*/  OV5640_REG_AEC_PK_EXPOSURE_LO ; 
 int /*<<< orphan*/  OV5640_REG_AEC_PK_EXPOSURE_MED ; 
 int FUNC0 (struct ov5640_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ov5640_dev *sensor, u32 exposure)
{
	int ret;

	exposure <<= 4;

	ret = FUNC0(sensor,
			       OV5640_REG_AEC_PK_EXPOSURE_LO,
			       exposure & 0xff);
	if (ret)
		return ret;
	ret = FUNC0(sensor,
			       OV5640_REG_AEC_PK_EXPOSURE_MED,
			       (exposure >> 8) & 0xff);
	if (ret)
		return ret;
	return FUNC0(sensor,
				OV5640_REG_AEC_PK_EXPOSURE_HI,
				(exposure >> 16) & 0x0f);
}