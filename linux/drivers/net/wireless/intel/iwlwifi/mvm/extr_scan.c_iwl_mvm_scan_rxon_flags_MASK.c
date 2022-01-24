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
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  PHY_BAND_24 ; 
 int /*<<< orphan*/  PHY_BAND_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __le32 FUNC1(enum nl80211_band band)
{
	if (band == NL80211_BAND_2GHZ)
		return FUNC0(PHY_BAND_24);
	else
		return FUNC0(PHY_BAND_5);
}