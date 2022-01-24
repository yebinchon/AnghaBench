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
struct TYPE_2__ {int divsel; int divsel_mask; int divsel_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLL_RAW ; 
 int /*<<< orphan*/  PRCMU_HDMICLK ; 
 int /*<<< orphan*/  PRCM_DSI_PLLOUT_SEL ; 
 int PRCM_DSI_PLLOUT_SEL_PHI ; 
 int PRCM_DSI_PLLOUT_SEL_PHI_2 ; 
 int PRCM_DSI_PLLOUT_SEL_PHI_4 ; 
 int /*<<< orphan*/  PRCM_PLLDSI_FREQ ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dsiclk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(u8 n, unsigned long rate)
{
	u32 val;
	u32 div;

	div = FUNC0(FUNC2(PRCM_PLLDSI_FREQ,
			FUNC1(PRCMU_HDMICLK), PLL_RAW), rate);

	dsiclk[n].divsel = (div == 1) ? PRCM_DSI_PLLOUT_SEL_PHI :
			   (div == 2) ? PRCM_DSI_PLLOUT_SEL_PHI_2 :
			   /* else */	PRCM_DSI_PLLOUT_SEL_PHI_4;

	val = FUNC3(PRCM_DSI_PLLOUT_SEL);
	val &= ~dsiclk[n].divsel_mask;
	val |= (dsiclk[n].divsel << dsiclk[n].divsel_shift);
	FUNC4(val, PRCM_DSI_PLLOUT_SEL);
}