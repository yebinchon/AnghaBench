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
typedef  int /*<<< orphan*/  u32 ;
struct ov5670 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5670_REG_B_DGTL_GAIN ; 
 int /*<<< orphan*/  OV5670_REG_G_DGTL_GAIN ; 
 int /*<<< orphan*/  OV5670_REG_R_DGTL_GAIN ; 
 int /*<<< orphan*/  OV5670_REG_VALUE_16BIT ; 
 int FUNC0 (struct ov5670*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ov5670 *ov5670, u32 d_gain)
{
	int ret;

	ret = FUNC0(ov5670, OV5670_REG_R_DGTL_GAIN,
			       OV5670_REG_VALUE_16BIT, d_gain);
	if (ret)
		return ret;

	ret = FUNC0(ov5670, OV5670_REG_G_DGTL_GAIN,
			       OV5670_REG_VALUE_16BIT, d_gain);
	if (ret)
		return ret;

	return FUNC0(ov5670, OV5670_REG_B_DGTL_GAIN,
				OV5670_REG_VALUE_16BIT, d_gain);
}