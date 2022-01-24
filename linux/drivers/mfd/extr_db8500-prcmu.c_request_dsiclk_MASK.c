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
struct TYPE_2__ {int divsel_mask; int divsel; int divsel_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCM_DSI_PLLOUT_SEL ; 
 int PRCM_DSI_PLLOUT_SEL_OFF ; 
 TYPE_1__* dsiclk ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u8 n, bool enable)
{
	u32 val;

	val = FUNC0(PRCM_DSI_PLLOUT_SEL);
	val &= ~dsiclk[n].divsel_mask;
	val |= ((enable ? dsiclk[n].divsel : PRCM_DSI_PLLOUT_SEL_OFF) <<
		dsiclk[n].divsel_shift);
	FUNC1(val, PRCM_DSI_PLLOUT_SEL);
	return 0;
}