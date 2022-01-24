#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sta_info {int /*<<< orphan*/  users; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr2; } ;
struct TYPE_5__ {TYPE_4__* ap; } ;
typedef  TYPE_1__ local_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FCTL_PM ; 
 int IEEE80211_FCTL_STYPE ; 
 struct sta_info* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sta_info*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(local_info_t *local, struct ieee80211_hdr *hdr)
{
	struct sta_info *sta;
	u16 fc;

	FUNC5(&local->ap->sta_table_lock);
	sta = FUNC0(local->ap, hdr->addr2);
	if (sta)
		FUNC2(&sta->users);
	FUNC6(&local->ap->sta_table_lock);

	if (!sta)
		return -1;

	fc = FUNC4(hdr->frame_control);
	FUNC3(local, sta, fc & IEEE80211_FCTL_PM,
			      fc & IEEE80211_FCTL_FTYPE,
			      fc & IEEE80211_FCTL_STYPE);

	FUNC1(&sta->users);
	return 0;
}