#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_2__* stations; } ;
struct il_addsta_cmd {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_4__ {size_t const* addr; } ;
struct TYPE_6__ {TYPE_1__ sta; } ;
struct TYPE_5__ {int used; TYPE_3__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t const*) ; 
 size_t IL_INVALID_STATION ; 
 int IL_STA_DRIVER_ACTIVE ; 
 int IL_STA_UCODE_ACTIVE ; 
 int IL_STA_UCODE_INPROGRESS ; 
 size_t FUNC3 (struct il_priv*,size_t const*,int,struct ieee80211_sta*) ; 
 int FUNC4 (struct il_priv*,struct il_addsta_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct il_addsta_cmd*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(struct il_priv *il, const u8 *addr, bool is_ap,
		      struct ieee80211_sta *sta, u8 *sta_id_r)
{
	unsigned long flags_spin;
	int ret = 0;
	u8 sta_id;
	struct il_addsta_cmd sta_cmd;

	*sta_id_r = 0;
	FUNC6(&il->sta_lock, flags_spin);
	sta_id = FUNC3(il, addr, is_ap, sta);
	if (sta_id == IL_INVALID_STATION) {
		FUNC2("Unable to prepare station %pM for addition\n", addr);
		FUNC7(&il->sta_lock, flags_spin);
		return -EINVAL;
	}

	/*
	 * uCode is not able to deal with multiple requests to add a
	 * station. Keep track if one is in progress so that we do not send
	 * another.
	 */
	if (il->stations[sta_id].used & IL_STA_UCODE_INPROGRESS) {
		FUNC1("STA %d already in process of being added.\n", sta_id);
		FUNC7(&il->sta_lock, flags_spin);
		return -EEXIST;
	}

	if ((il->stations[sta_id].used & IL_STA_DRIVER_ACTIVE) &&
	    (il->stations[sta_id].used & IL_STA_UCODE_ACTIVE)) {
		FUNC0("STA %d (%pM) already added, not adding again.\n",
			sta_id, addr);
		FUNC7(&il->sta_lock, flags_spin);
		return -EEXIST;
	}

	il->stations[sta_id].used |= IL_STA_UCODE_INPROGRESS;
	FUNC5(&sta_cmd, &il->stations[sta_id].sta,
	       sizeof(struct il_addsta_cmd));
	FUNC7(&il->sta_lock, flags_spin);

	/* Add station to device's station table */
	ret = FUNC4(il, &sta_cmd, CMD_SYNC);
	if (ret) {
		FUNC6(&il->sta_lock, flags_spin);
		FUNC2("Adding station %pM failed.\n",
		       il->stations[sta_id].sta.sta.addr);
		il->stations[sta_id].used &= ~IL_STA_DRIVER_ACTIVE;
		il->stations[sta_id].used &= ~IL_STA_UCODE_INPROGRESS;
		FUNC7(&il->sta_lock, flags_spin);
	}
	*sta_id_r = sta_id;
	return ret;
}