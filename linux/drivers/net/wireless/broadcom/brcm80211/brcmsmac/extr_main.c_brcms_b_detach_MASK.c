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
typedef  scalar_t__ uint ;
struct brcms_hw_band {int /*<<< orphan*/ * pi; } ;
struct brcms_hardware {scalar_t__ _nbands; int /*<<< orphan*/ * sih; int /*<<< orphan*/  physhim; int /*<<< orphan*/  phy_sh; struct brcms_hw_band** bandstate; struct brcms_hw_band* band; } ;
struct brcms_c_info {struct brcms_hardware* hw; } ;

/* Variables and functions */
 size_t FUNC0 (struct brcms_c_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct brcms_c_info *wlc)
{
	uint i;
	struct brcms_hw_band *band;
	struct brcms_hardware *wlc_hw = wlc->hw;

	FUNC2(wlc_hw);

	band = wlc_hw->band;
	for (i = 0; i < wlc_hw->_nbands; i++) {
		if (band->pi) {
			/* Detach this band's phy */
			FUNC4(band->pi);
			band->pi = NULL;
		}
		band = wlc_hw->bandstate[FUNC0(wlc)];
	}

	/* Free shared phy state */
	FUNC3(wlc_hw->phy_sh);

	FUNC5(wlc_hw->physhim);

	if (wlc_hw->sih) {
		FUNC1(wlc_hw->sih);
		wlc_hw->sih = NULL;
	}
}