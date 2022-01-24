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
struct TYPE_4__ {int /*<<< orphan*/ * rssical_phyregs_5G; int /*<<< orphan*/ * rssical_radio_regs_5G; int /*<<< orphan*/ * rssical_phyregs_2G; int /*<<< orphan*/ * rssical_radio_regs_2G; } ;
struct TYPE_3__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ nphy_rssical_chanspec_2G; scalar_t__ nphy_rssical_chanspec_5G; TYPE_2__ rssical_cache; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RADIO_2056_RX0 ; 
 int RADIO_2056_RX1 ; 
 int RADIO_2056_RX_RSSI_MISC ; 
 int /*<<< orphan*/  RADIO_2056_VCM_MASK ; 
 int RADIO_2057_NB_MASTER_CORE0 ; 
 int RADIO_2057_NB_MASTER_CORE1 ; 
 int /*<<< orphan*/  RADIO_2057_VCM_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct brcms_phy *pi)
{
	if (FUNC0(pi->radio_chanspec)) {
		if (pi->nphy_rssical_chanspec_2G == 0)
			return;

		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			FUNC2(pi, RADIO_2057_NB_MASTER_CORE0,
				      RADIO_2057_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_2G[0]);
			FUNC2(pi, RADIO_2057_NB_MASTER_CORE1,
				      RADIO_2057_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_2G[1]);
		} else {
			FUNC2(pi,
				      RADIO_2056_RX_RSSI_MISC | RADIO_2056_RX0,
				      RADIO_2056_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_2G[0]);
			FUNC2(pi,
				      RADIO_2056_RX_RSSI_MISC | RADIO_2056_RX1,
				      RADIO_2056_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_2G[1]);
		}

		FUNC3(pi, 0x1a6,
			      pi->rssical_cache.rssical_phyregs_2G[0]);
		FUNC3(pi, 0x1ac,
			      pi->rssical_cache.rssical_phyregs_2G[1]);
		FUNC3(pi, 0x1b2,
			      pi->rssical_cache.rssical_phyregs_2G[2]);
		FUNC3(pi, 0x1b8,
			      pi->rssical_cache.rssical_phyregs_2G[3]);
		FUNC3(pi, 0x1a4,
			      pi->rssical_cache.rssical_phyregs_2G[4]);
		FUNC3(pi, 0x1aa,
			      pi->rssical_cache.rssical_phyregs_2G[5]);
		FUNC3(pi, 0x1b0,
			      pi->rssical_cache.rssical_phyregs_2G[6]);
		FUNC3(pi, 0x1b6,
			      pi->rssical_cache.rssical_phyregs_2G[7]);
		FUNC3(pi, 0x1a5,
			      pi->rssical_cache.rssical_phyregs_2G[8]);
		FUNC3(pi, 0x1ab,
			      pi->rssical_cache.rssical_phyregs_2G[9]);
		FUNC3(pi, 0x1b1,
			      pi->rssical_cache.rssical_phyregs_2G[10]);
		FUNC3(pi, 0x1b7,
			      pi->rssical_cache.rssical_phyregs_2G[11]);

	} else {
		if (pi->nphy_rssical_chanspec_5G == 0)
			return;

		if (FUNC1(pi->pubpi.phy_rev, 7)) {
			FUNC2(pi, RADIO_2057_NB_MASTER_CORE0,
				      RADIO_2057_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_5G[0]);
			FUNC2(pi, RADIO_2057_NB_MASTER_CORE1,
				      RADIO_2057_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_5G[1]);
		} else {
			FUNC2(pi,
				      RADIO_2056_RX_RSSI_MISC | RADIO_2056_RX0,
				      RADIO_2056_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_5G[0]);
			FUNC2(pi,
				      RADIO_2056_RX_RSSI_MISC | RADIO_2056_RX1,
				      RADIO_2056_VCM_MASK,
				      pi->rssical_cache.
				      rssical_radio_regs_5G[1]);
		}

		FUNC3(pi, 0x1a6,
			      pi->rssical_cache.rssical_phyregs_5G[0]);
		FUNC3(pi, 0x1ac,
			      pi->rssical_cache.rssical_phyregs_5G[1]);
		FUNC3(pi, 0x1b2,
			      pi->rssical_cache.rssical_phyregs_5G[2]);
		FUNC3(pi, 0x1b8,
			      pi->rssical_cache.rssical_phyregs_5G[3]);
		FUNC3(pi, 0x1a4,
			      pi->rssical_cache.rssical_phyregs_5G[4]);
		FUNC3(pi, 0x1aa,
			      pi->rssical_cache.rssical_phyregs_5G[5]);
		FUNC3(pi, 0x1b0,
			      pi->rssical_cache.rssical_phyregs_5G[6]);
		FUNC3(pi, 0x1b6,
			      pi->rssical_cache.rssical_phyregs_5G[7]);
		FUNC3(pi, 0x1a5,
			      pi->rssical_cache.rssical_phyregs_5G[8]);
		FUNC3(pi, 0x1ab,
			      pi->rssical_cache.rssical_phyregs_5G[9]);
		FUNC3(pi, 0x1b1,
			      pi->rssical_cache.rssical_phyregs_5G[10]);
		FUNC3(pi, 0x1b7,
			      pi->rssical_cache.rssical_phyregs_5G[11]);
	}
}