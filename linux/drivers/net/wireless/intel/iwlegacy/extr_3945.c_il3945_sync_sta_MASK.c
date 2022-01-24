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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  rate_n_flags; TYPE_1__ sta; } ;
struct il_station_entry {TYPE_2__ sta; } ;
struct il_priv {int /*<<< orphan*/  sta_lock; struct il_station_entry* stations; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int IL_INVALID_STATION ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_TX_RATE_MSK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u8
FUNC5(struct il_priv *il, int sta_id, u16 tx_rate)
{
	unsigned long flags_spin;
	struct il_station_entry *station;

	if (sta_id == IL_INVALID_STATION)
		return IL_INVALID_STATION;

	FUNC3(&il->sta_lock, flags_spin);
	station = &il->stations[sta_id];

	station->sta.sta.modify_mask = STA_MODIFY_TX_RATE_MSK;
	station->sta.rate_n_flags = FUNC1(tx_rate);
	station->sta.mode = STA_CONTROL_MODIFY_MSK;
	FUNC2(il, &station->sta, CMD_ASYNC);
	FUNC4(&il->sta_lock, flags_spin);

	FUNC0("SCALE sync station %d to rate %d\n", sta_id, tx_rate);
	return sta_id;
}