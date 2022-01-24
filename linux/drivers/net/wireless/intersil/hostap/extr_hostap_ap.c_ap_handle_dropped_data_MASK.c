#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sta_info {int flags; int /*<<< orphan*/  users; } ;
struct net_device {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; } ;
typedef  int /*<<< orphan*/  reason ;
struct TYPE_4__ {TYPE_3__* ap; struct net_device* dev; } ;
typedef  TYPE_1__ local_info_t ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_DEAUTH ; 
 int IEEE80211_STYPE_DISASSOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA ; 
 int WLAN_STA_ASSOC ; 
 struct sta_info* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(local_info_t *local,
				   struct ieee80211_hdr *hdr)
{
	struct net_device *dev = local->dev;
	struct sta_info *sta;
	__le16 reason;

	FUNC6(&local->ap->sta_table_lock);
	sta = FUNC1(local->ap, hdr->addr2);
	if (sta)
		FUNC3(&sta->users);
	FUNC7(&local->ap->sta_table_lock);

	if (sta != NULL && (sta->flags & WLAN_STA_ASSOC)) {
		FUNC0(DEBUG_AP, "ap_handle_dropped_data: STA is now okay?\n");
		FUNC2(&sta->users);
		return;
	}

	reason = FUNC4(WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
	FUNC5(dev, IEEE80211_FTYPE_MGMT |
			 ((sta == NULL || !(sta->flags & WLAN_STA_ASSOC)) ?
			  IEEE80211_STYPE_DEAUTH : IEEE80211_STYPE_DISASSOC),
			 (char *) &reason, sizeof(reason), hdr->addr2, 0);

	if (sta)
		FUNC2(&sta->users);
}