#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_3__* stations; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_5__ {size_t tkip_rx_tsc_byte2; int /*<<< orphan*/ * tkip_rx_ttak; } ;
struct TYPE_8__ {int /*<<< orphan*/  mode; TYPE_2__ sta; TYPE_1__ key; } ;
struct TYPE_7__ {TYPE_4__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 size_t IL_INVALID_STATION ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_KEY_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct il_priv*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC6(struct il_priv *il, struct ieee80211_key_conf *keyconf,
		       struct ieee80211_sta *sta, u32 iv32, u16 *phase1key)
{
	u8 sta_id;
	unsigned long flags;
	int i;

	if (FUNC1(il)) {
		/* cancel scan failed, just live w/ bad key and rely
		   briefly on SW decryption */
		return;
	}

	sta_id = FUNC3(il, sta);
	if (sta_id == IL_INVALID_STATION)
		return;

	FUNC4(&il->sta_lock, flags);

	il->stations[sta_id].sta.key.tkip_rx_tsc_byte2 = (u8) iv32;

	for (i = 0; i < 5; i++)
		il->stations[sta_id].sta.key.tkip_rx_ttak[i] =
		    FUNC0(phase1key[i]);

	il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_KEY_MASK;
	il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;

	FUNC2(il, &il->stations[sta_id].sta, CMD_ASYNC);

	FUNC5(&il->sta_lock, flags);
}