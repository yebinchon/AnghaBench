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
struct ov8856 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV8856_REG_TEST_PATTERN ; 
 int /*<<< orphan*/  OV8856_REG_VALUE_08BIT ; 
 int OV8856_TEST_PATTERN_BAR_SHIFT ; 
 int OV8856_TEST_PATTERN_ENABLE ; 
 int FUNC0 (struct ov8856*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ov8856 *ov8856, u32 pattern)
{
	if (pattern)
		pattern = (pattern - 1) << OV8856_TEST_PATTERN_BAR_SHIFT |
			  OV8856_TEST_PATTERN_ENABLE;

	return FUNC0(ov8856, OV8856_REG_TEST_PATTERN,
				OV8856_REG_VALUE_08BIT, pattern);
}