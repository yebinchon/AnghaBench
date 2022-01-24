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
typedef  int u64 ;
struct TYPE_2__ {scalar_t__ reg_base; } ;

/* Variables and functions */
 int CLKRX_BYP ; 
 int CLK_RESET ; 
 int COMP_EN ; 
 int DLL_RESET ; 
 int PORT_EN ; 
 scalar_t__ XCV_DLL_CTL ; 
 scalar_t__ XCV_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__* xcv ; 

void FUNC3(void)
{
	u64  cfg;

	/* Take DLL out of reset */
	cfg = FUNC1(xcv->reg_base + XCV_RESET);
	cfg &= ~DLL_RESET;
	FUNC2(cfg, xcv->reg_base + XCV_RESET);

	/* Take clock tree out of reset */
	cfg = FUNC1(xcv->reg_base + XCV_RESET);
	cfg &= ~CLK_RESET;
	FUNC2(cfg, xcv->reg_base + XCV_RESET);
	/* Wait for DLL to lock */
	FUNC0(1);

	/* Configure DLL - enable or bypass
	 * TX no bypass, RX bypass
	 */
	cfg = FUNC1(xcv->reg_base + XCV_DLL_CTL);
	cfg &= ~0xFF03;
	cfg |= CLKRX_BYP;
	FUNC2(cfg, xcv->reg_base + XCV_DLL_CTL);

	/* Enable compensation controller and force the
	 * write to be visible to HW by readig back.
	 */
	cfg = FUNC1(xcv->reg_base + XCV_RESET);
	cfg |= COMP_EN;
	FUNC2(cfg, xcv->reg_base + XCV_RESET);
	FUNC1(xcv->reg_base + XCV_RESET);
	/* Wait for compensation state machine to lock */
	FUNC0(10);

	/* enable the XCV block */
	cfg = FUNC1(xcv->reg_base + XCV_RESET);
	cfg |= PORT_EN;
	FUNC2(cfg, xcv->reg_base + XCV_RESET);

	cfg = FUNC1(xcv->reg_base + XCV_RESET);
	cfg |= CLK_RESET;
	FUNC2(cfg, xcv->reg_base + XCV_RESET);
}