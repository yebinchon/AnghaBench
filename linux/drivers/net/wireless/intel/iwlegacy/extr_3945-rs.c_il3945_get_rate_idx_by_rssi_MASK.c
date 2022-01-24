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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct il3945_tpt_entry {scalar_t__ min_rssi; int /*<<< orphan*/  idx; } ;
typedef  scalar_t__ s32 ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;

/* Variables and functions */
 size_t FUNC0 (struct il3945_tpt_entry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ IL_MAX_RSSI_VAL ; 
 scalar_t__ IL_MIN_RSSI_VAL ; 
#define  NL80211_BAND_2GHZ 129 
#define  NL80211_BAND_5GHZ 128 
 struct il3945_tpt_entry* il3945_tpt_table_a ; 
 struct il3945_tpt_entry* il3945_tpt_table_g ; 
 size_t FUNC2 (size_t,size_t) ; 

__attribute__((used)) static u8
FUNC3(s32 rssi, enum nl80211_band band)
{
	u32 idx = 0;
	u32 table_size = 0;
	struct il3945_tpt_entry *tpt_table = NULL;

	if (rssi < IL_MIN_RSSI_VAL || rssi > IL_MAX_RSSI_VAL)
		rssi = IL_MIN_RSSI_VAL;

	switch (band) {
	case NL80211_BAND_2GHZ:
		tpt_table = il3945_tpt_table_g;
		table_size = FUNC0(il3945_tpt_table_g);
		break;
	case NL80211_BAND_5GHZ:
		tpt_table = il3945_tpt_table_a;
		table_size = FUNC0(il3945_tpt_table_a);
		break;
	default:
		FUNC1();
		break;
	}

	while (idx < table_size && rssi < tpt_table[idx].min_rssi)
		idx++;

	idx = FUNC2(idx, table_size - 1);

	return tpt_table[idx].idx;
}