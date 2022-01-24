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
struct b43legacy_wldev {int radio_hw_enable; } ;
struct b43legacy_phy {int savedpctlreg; int aci_enable; int aci_wlan_automatic; int aci_hw_rssi; int* nrssi; int* nrssi_lt; int lofcal; int initval; int channel; int /*<<< orphan*/  interfmode; scalar_t__ nrssislope; scalar_t__ txpwr_offset; int /*<<< orphan*/  txctl1; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; scalar_t__ trsw_rx_gain; scalar_t__ max_lb_gain; struct b43legacy_lopair* _lo_pairs; struct b43legacy_lopair* minlowsigpos; struct b43legacy_lopair* minlowsig; } ;
struct b43legacy_lopair {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  B43legacy_INTERFMODE_NONE ; 
 int B43legacy_LO_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_lopair*,int,int) ; 

__attribute__((used)) static void FUNC5(struct b43legacy_wldev *dev,
				      struct b43legacy_phy *phy)
{
	struct b43legacy_lopair *lo;
	int i;

	FUNC4(phy->minlowsig, 0xFF, sizeof(phy->minlowsig));
	FUNC4(phy->minlowsigpos, 0, sizeof(phy->minlowsigpos));

	/* Assume the radio is enabled. If it's not enabled, the state will
	 * immediately get fixed on the first periodic work run. */
	dev->radio_hw_enable = true;

	phy->savedpctlreg = 0xFFFF;
	phy->aci_enable = false;
	phy->aci_wlan_automatic = false;
	phy->aci_hw_rssi = false;

	lo = phy->_lo_pairs;
	if (lo)
		FUNC4(lo, 0, sizeof(struct b43legacy_lopair) *
				     B43legacy_LO_COUNT);
	phy->max_lb_gain = 0;
	phy->trsw_rx_gain = 0;

	/* Set default attenuation values. */
	phy->bbatt = FUNC1(dev);
	phy->rfatt = FUNC2(dev);
	phy->txctl1 = FUNC3(dev);
	phy->txpwr_offset = 0;

	/* NRSSI */
	phy->nrssislope = 0;
	for (i = 0; i < FUNC0(phy->nrssi); i++)
		phy->nrssi[i] = -1000;
	for (i = 0; i < FUNC0(phy->nrssi_lt); i++)
		phy->nrssi_lt[i] = i;

	phy->lofcal = 0xFFFF;
	phy->initval = 0xFFFF;

	phy->interfmode = B43legacy_INTERFMODE_NONE;
	phy->channel = 0xFF;
}