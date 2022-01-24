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
struct ocelot {int /*<<< orphan*/ * targets; } ;

/* Variables and functions */
 size_t HSIO ; 
 int /*<<< orphan*/  HSIO_PLL5G_CFG0 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int HSIO_PLL5G_CFG0_DIV4 ; 
 int HSIO_PLL5G_CFG0_ENA_BIAS ; 
 int HSIO_PLL5G_CFG0_ENA_CLKTREE ; 
 int HSIO_PLL5G_CFG0_ENA_CP1 ; 
 int HSIO_PLL5G_CFG0_ENA_LANE ; 
 int HSIO_PLL5G_CFG0_ENA_VCO_BUF ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  HSIO_PLL5G_CFG2 ; 
 int FUNC5 (int) ; 
 int HSIO_PLL5G_CFG2_ENA_AMPCTRL ; 
 int HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET ; 
 int HSIO_PLL5G_CFG2_EN_RESET_OVERRUN ; 
 int FUNC6 (int) ; 
 int HSIO_PLL5G_CFG2_PWD_AMPCTRL_N ; 
 int /*<<< orphan*/  HSIO_PLL5G_CFG4 ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ocelot *ocelot)
{
	/* Configure PLL5. This will need a proper CCF driver
	 * The values are coming from the VTSS API for Ocelot
	 */
	FUNC9(ocelot->targets[HSIO], HSIO_PLL5G_CFG4,
		     FUNC8(0x7600) |
		     FUNC7(0x8));
	FUNC9(ocelot->targets[HSIO], HSIO_PLL5G_CFG0,
		     FUNC0(0x11) |
		     FUNC1(2) |
		     HSIO_PLL5G_CFG0_ENA_BIAS |
		     HSIO_PLL5G_CFG0_ENA_VCO_BUF |
		     HSIO_PLL5G_CFG0_ENA_CP1 |
		     FUNC4(2) |
		     FUNC2(0xe) |
		     FUNC3(4) |
		     HSIO_PLL5G_CFG0_DIV4 |
		     HSIO_PLL5G_CFG0_ENA_CLKTREE |
		     HSIO_PLL5G_CFG0_ENA_LANE);
	FUNC9(ocelot->targets[HSIO], HSIO_PLL5G_CFG2,
		     HSIO_PLL5G_CFG2_EN_RESET_FRQ_DET |
		     HSIO_PLL5G_CFG2_EN_RESET_OVERRUN |
		     FUNC6(0x8) |
		     HSIO_PLL5G_CFG2_ENA_AMPCTRL |
		     HSIO_PLL5G_CFG2_PWD_AMPCTRL_N |
		     FUNC5(0x10));
}