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

/* Variables and functions */
 int EINVAL ; 
#define  HFCLK_FREQ_19p2_MHZ 130 
#define  HFCLK_FREQ_26_MHZ 129 
#define  HFCLK_FREQ_38p4_MHZ 128 
 int /*<<< orphan*/  R_CFG_BOOT ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int FUNC2(void)
{
	u8 ctrl;
	int rate;

	FUNC1(TWL_MODULE_PM_MASTER, &ctrl, R_CFG_BOOT);

	switch (ctrl & 0x3) {
	case HFCLK_FREQ_19p2_MHZ:
		rate = 19200000;
		break;
	case HFCLK_FREQ_26_MHZ:
		rate = 26000000;
		break;
	case HFCLK_FREQ_38p4_MHZ:
		rate = 38400000;
		break;
	default:
		FUNC0("TWL4030: HFCLK is not configured\n");
		rate = -EINVAL;
		break;
	}

	return rate;
}