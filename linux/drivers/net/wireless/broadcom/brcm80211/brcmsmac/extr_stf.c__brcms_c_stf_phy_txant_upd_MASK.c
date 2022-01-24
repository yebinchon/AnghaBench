#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct brcms_c_info {TYPE_1__* stf; int /*<<< orphan*/  hw; TYPE_2__* band; } ;
typedef  scalar_t__ s8 ;
struct TYPE_7__ {int /*<<< orphan*/  phyrev; } ;
struct TYPE_6__ {int phytxant; int txchain; scalar_t__ txant; } ;

/* Variables and functions */
 scalar_t__ ANT_TX_FORCE_0 ; 
 scalar_t__ ANT_TX_FORCE_1 ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int PHY_TXC_ANT_0 ; 
 int PHY_TXC_ANT_1 ; 
 int PHY_TXC_ANT_2 ; 
 int PHY_TXC_ANT_SHIFT ; 
 int PHY_TXC_LCNPHY_ANT_LAST ; 
 int PHY_TXC_OLD_ANT_0 ; 
 int PHY_TXC_OLD_ANT_1 ; 
 int PHY_TXC_OLD_ANT_LAST ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct brcms_c_info *wlc)
{
	s8 txant;

	txant = (s8) wlc->stf->txant;
	if (FUNC3(wlc->band)) {
		if (txant == ANT_TX_FORCE_0) {
			wlc->stf->phytxant = PHY_TXC_ANT_0;
		} else if (txant == ANT_TX_FORCE_1) {
			wlc->stf->phytxant = PHY_TXC_ANT_1;

			if (FUNC1(wlc->band) &&
			    FUNC4(wlc->band->phyrev, 3)
			    && FUNC5(wlc->band->phyrev, 7))
				wlc->stf->phytxant = PHY_TXC_ANT_2;
		} else {
			if (FUNC0(wlc->band) ||
			    FUNC2(wlc->band))
				wlc->stf->phytxant = PHY_TXC_LCNPHY_ANT_LAST;
			else {
				/* catch out of sync wlc->stf->txcore */
				FUNC6(wlc->stf->txchain <= 0);
				wlc->stf->phytxant =
				    wlc->stf->txchain << PHY_TXC_ANT_SHIFT;
			}
		}
	} else {
		if (txant == ANT_TX_FORCE_0)
			wlc->stf->phytxant = PHY_TXC_OLD_ANT_0;
		else if (txant == ANT_TX_FORCE_1)
			wlc->stf->phytxant = PHY_TXC_OLD_ANT_1;
		else
			wlc->stf->phytxant = PHY_TXC_OLD_ANT_LAST;
	}

	FUNC7(wlc->hw, wlc->stf->phytxant);
}