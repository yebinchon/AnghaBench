#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_2__ {int divsel_mask; int divsel_shift; int divsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_RAW ; 
 int /*<<< orphan*/  PRCMU_HDMICLK ; 
 int /*<<< orphan*/  PRCM_DSI_PLLOUT_SEL ; 
 int PRCM_DSI_PLLOUT_SEL_OFF ; 
#define  PRCM_DSI_PLLOUT_SEL_PHI 130 
#define  PRCM_DSI_PLLOUT_SEL_PHI_2 129 
#define  PRCM_DSI_PLLOUT_SEL_PHI_4 128 
 int /*<<< orphan*/  PRCM_PLLDSI_FREQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dsiclk ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC3(u8 n)
{
	u32 divsel;
	u32 div = 1;

	divsel = FUNC2(PRCM_DSI_PLLOUT_SEL);
	divsel = ((divsel & dsiclk[n].divsel_mask) >> dsiclk[n].divsel_shift);

	if (divsel == PRCM_DSI_PLLOUT_SEL_OFF)
		divsel = dsiclk[n].divsel;
	else
		dsiclk[n].divsel = divsel;

	switch (divsel) {
	case PRCM_DSI_PLLOUT_SEL_PHI_4:
		div *= 2;
		/* Fall through */
	case PRCM_DSI_PLLOUT_SEL_PHI_2:
		div *= 2;
		/* Fall through */
	case PRCM_DSI_PLLOUT_SEL_PHI:
		return FUNC1(PRCM_PLLDSI_FREQ, FUNC0(PRCMU_HDMICLK),
			PLL_RAW) / div;
	default:
		return 0;
	}
}