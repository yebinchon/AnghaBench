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
struct il_priv {scalar_t__ iw_mode; } ;
struct ieee80211_hdr {int dummy; } ;

/* Variables and functions */
 int IL_AP_ID ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/ * FUNC0 (struct ieee80211_hdr*) ; 
 int FUNC1 (struct il_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct il_priv *il, struct ieee80211_hdr *hdr)
{
	if (il->iw_mode == NL80211_IFTYPE_STATION)
		return IL_AP_ID;
	else {
		u8 *da = FUNC0(hdr);

		return FUNC1(il, da);
	}
}