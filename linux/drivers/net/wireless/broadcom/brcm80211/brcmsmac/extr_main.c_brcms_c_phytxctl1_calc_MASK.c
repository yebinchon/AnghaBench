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
typedef  size_t u32 ;
typedef  int u16 ;
struct brcms_c_info {TYPE_1__* hw; int /*<<< orphan*/  band; } ;
typedef  int s16 ;
struct TYPE_4__ {int tx_phy_ctl3; } ;
struct TYPE_3__ {int /*<<< orphan*/  d11core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PHY_TXC1_BW_20MHZ ; 
 int PHY_TXC1_MODE_SHIFT ; 
 size_t RSPEC_RATE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 TYPE_2__* mcs_table ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int FUNC7 (size_t) ; 
 int FUNC8 (size_t) ; 
 int FUNC9 (size_t) ; 

__attribute__((used)) static u16 FUNC10(struct brcms_c_info *wlc, u32 rspec)
{
	u16 phyctl1 = 0;
	u16 bw;

	if (FUNC0(wlc->band)) {
		bw = PHY_TXC1_BW_20MHZ;
	} else {
		bw = FUNC7(rspec);
		/* 10Mhz is not supported yet */
		if (bw < PHY_TXC1_BW_20MHZ) {
			FUNC3(wlc->hw->d11core, "phytxctl1_calc: bw %d is "
				  "not supported yet, set to 20L\n", bw);
			bw = PHY_TXC1_BW_20MHZ;
		}
	}

	if (FUNC5(rspec)) {
		uint mcs = rspec & RSPEC_RATE_MASK;

		/* bw, stf, coding-type is part of rspec_phytxbyte2 returns */
		phyctl1 = FUNC8(rspec);
		/* set the upper byte of phyctl1 */
		phyctl1 |= (mcs_table[mcs].tx_phy_ctl3 << 8);
	} else if (FUNC4(rspec) && !FUNC0(wlc->band)
		   && !FUNC1(wlc->band)) {
		/*
		 * In CCK mode LPPHY overloads OFDM Modulation bits with CCK
		 * Data Rate. Eventually MIMOPHY would also be converted to
		 * this format
		 */
		/* 0 = 1Mbps; 1 = 2Mbps; 2 = 5.5Mbps; 3 = 11Mbps */
		phyctl1 = (bw | (FUNC9(rspec) << PHY_TXC1_MODE_SHIFT));
	} else {		/* legacy OFDM/CCK */
		s16 phycfg;
		/* get the phyctl byte from rate phycfg table */
		phycfg = FUNC2(FUNC6(rspec));
		if (phycfg == -1) {
			FUNC3(wlc->hw->d11core, "phytxctl1_calc: wrong "
				  "legacy OFDM/CCK rate\n");
			phycfg = 0;
		}
		/* set the upper byte of phyctl1 */
		phyctl1 =
		    (bw | (phycfg << 8) |
		     (FUNC9(rspec) << PHY_TXC1_MODE_SHIFT));
	}
	return phyctl1;
}