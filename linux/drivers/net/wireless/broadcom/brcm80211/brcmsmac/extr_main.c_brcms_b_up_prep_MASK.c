#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct brcms_hardware {TYPE_1__* d11core; int /*<<< orphan*/  sih; int /*<<< orphan*/  unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CLKMODE_FAST ; 
 int /*<<< orphan*/  BRCMS_USE_COREFLAGS ; 
 int ENOMEDIUM ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct brcms_hardware *wlc_hw)
{
	FUNC8(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

	/*
	 * Enable pll and xtal, initialize the power control registers,
	 * and force fastclock for the remainder of brcms_c_up().
	 */
	FUNC7(wlc_hw, ON);
	FUNC0(wlc_hw->sih);
	FUNC4(wlc_hw, BCMA_CLKMODE_FAST);

	/*
	 * Configure pci/pcmcia here instead of in brcms_c_attach()
	 * to allow mfg hotswap:  down, hotswap (chip power cycle), up.
	 */
	FUNC2(wlc_hw->d11core->bus, wlc_hw->d11core,
			      true);

	/*
	 * Need to read the hwradio status here to cover the case where the
	 * system is loaded with the hw radio disabled. We do not want to
	 * bring the driver up in this case.
	 */
	if (FUNC6(wlc_hw)) {
		/* put SB PCI in down state again */
		FUNC1(wlc_hw->d11core->bus);
		FUNC7(wlc_hw, OFF);
		return -ENOMEDIUM;
	}

	FUNC3(wlc_hw->d11core->bus);

	/* reset the d11 core */
	FUNC5(wlc_hw, BRCMS_USE_COREFLAGS);

	return 0;
}