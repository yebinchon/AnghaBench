#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u16 ;
struct txpwr_limits {int dummy; } ;
struct brcms_hardware {int _nbands; TYPE_2__* band; scalar_t__ clk; scalar_t__ up; TYPE_1__** bandstate; int /*<<< orphan*/  chanspec; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;
struct TYPE_4__ {size_t bandunit; int /*<<< orphan*/  pi; } ;
struct TYPE_3__ {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_hardware*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_hardware*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_hardware*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct txpwr_limits*,int /*<<< orphan*/ ) ; 

void
FUNC9(struct brcms_hardware *wlc_hw, u16 chanspec,
		      bool mute_tx, struct txpwr_limits *txpwr)
{
	uint bandunit;

	FUNC3(wlc_hw->d11core, "wl%d: 0x%x\n", wlc_hw->unit,
			   chanspec);

	wlc_hw->chanspec = chanspec;

	/* Switch bands if necessary */
	if (wlc_hw->_nbands > 1) {
		bandunit = FUNC4(chanspec);
		if (wlc_hw->band->bandunit != bandunit) {
			/* brcms_b_setband disables other bandunit,
			 *  use light band switch if not up yet
			 */
			if (wlc_hw->up) {
				FUNC5(wlc_hw->
							   bandstate[bandunit]->
							   pi, chanspec);
				FUNC1(wlc_hw, bandunit, chanspec);
			} else {
				FUNC2(wlc_hw, bandunit);
			}
		}
	}

	FUNC7(wlc_hw->band->pi, !mute_tx);

	if (!wlc_hw->up) {
		if (wlc_hw->clk)
			FUNC8(wlc_hw->band->pi, txpwr,
						  chanspec);
		FUNC5(wlc_hw->band->pi, chanspec);
	} else {
		FUNC6(wlc_hw->band->pi, chanspec);
		FUNC8(wlc_hw->band->pi, txpwr, chanspec);

		/* Update muting of the channel */
		FUNC0(wlc_hw, mute_tx);
	}
}