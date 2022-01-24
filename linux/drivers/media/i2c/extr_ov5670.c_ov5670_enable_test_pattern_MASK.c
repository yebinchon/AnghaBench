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
typedef  scalar_t__ u32 ;
struct ov5670 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5670_REG_TEST_PATTERN ; 
 int /*<<< orphan*/  OV5670_REG_TEST_PATTERN_CTRL ; 
 int /*<<< orphan*/  OV5670_REG_VALUE_08BIT ; 
 scalar_t__ OV5670_TEST_PATTERN_ENABLE ; 
 int FUNC0 (struct ov5670*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (struct ov5670*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ov5670 *ov5670, u32 pattern)
{
	u32 val;
	int ret;

	/* Set the bayer order that we support */
	ret = FUNC1(ov5670, OV5670_REG_TEST_PATTERN_CTRL,
			       OV5670_REG_VALUE_08BIT, 0);
	if (ret)
		return ret;

	ret = FUNC0(ov5670, OV5670_REG_TEST_PATTERN,
			      OV5670_REG_VALUE_08BIT, &val);
	if (ret)
		return ret;

	if (pattern)
		val |= OV5670_TEST_PATTERN_ENABLE;
	else
		val &= ~OV5670_TEST_PATTERN_ENABLE;

	return FUNC1(ov5670, OV5670_REG_TEST_PATTERN,
				OV5670_REG_VALUE_08BIT, val);
}