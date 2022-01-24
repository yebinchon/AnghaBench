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
struct max2175 {int dummy; } ;
typedef  enum max2175_csm_mode { ____Placeholder_max2175_csm_mode } max2175_csm_mode ;

/* Variables and functions */
#define  MAX2175_PRESET_TUNE 128 
 int FUNC0 (struct max2175*) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static bool FUNC4(struct max2175 *ctx,
			  enum max2175_csm_mode new_mode)
{
	int ret = FUNC0(ctx);

	if (ret)
		return ret;

	FUNC1(ctx, 0, 2, 0, new_mode);
	FUNC2(ctx, "set csm new mode %d\n", new_mode);

	/* Wait for a fixed settle down time depending on new mode */
	switch (new_mode) {
	case MAX2175_PRESET_TUNE:
		FUNC3(51100, 51500);	/* 51.1ms */
		break;
	/*
	 * Other mode switches need different sleep values depending on band &
	 * mode
	 */
	default:
		break;
	}

	return FUNC0(ctx);
}