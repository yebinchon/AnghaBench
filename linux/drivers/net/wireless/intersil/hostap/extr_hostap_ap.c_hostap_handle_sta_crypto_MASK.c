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
struct sta_info {int /*<<< orphan*/  users; struct lib80211_crypt_data* crypt; } ;
struct lib80211_crypt_data {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; } ;
struct TYPE_4__ {TYPE_3__* ap; } ;
typedef  TYPE_1__ local_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  sta_table_lock; } ;

/* Variables and functions */
 struct sta_info* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(local_info_t *local,
			     struct ieee80211_hdr *hdr,
			     struct lib80211_crypt_data **crypt,
			     void **sta_ptr)
{
	struct sta_info *sta;

	FUNC3(&local->ap->sta_table_lock);
	sta = FUNC0(local->ap, hdr->addr2);
	if (sta)
		FUNC2(&sta->users);
	FUNC4(&local->ap->sta_table_lock);

	if (!sta)
		return -1;

	if (sta->crypt) {
		*crypt = sta->crypt;
		*sta_ptr = sta;
		/* hostap_handle_sta_release() will be called to release STA
		 * info */
	} else
		FUNC1(&sta->users);

	return 0;
}