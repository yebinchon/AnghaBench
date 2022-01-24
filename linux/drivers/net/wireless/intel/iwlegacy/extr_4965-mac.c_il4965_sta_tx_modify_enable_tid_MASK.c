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
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_2__* stations; int /*<<< orphan*/  mutex; } ;
struct il_addsta_cmd {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  tid_disable_tx; TYPE_1__ sta; } ;
struct TYPE_5__ {TYPE_3__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_TID_DISABLE_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct il_priv*,struct il_addsta_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct il_addsta_cmd*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct il_priv *il, int sta_id, int tid)
{
	unsigned long flags;
	struct il_addsta_cmd sta_cmd;

	FUNC2(&il->mutex);

	/* Remove "disable" flag, to enable Tx for this TID */
	FUNC4(&il->sta_lock, flags);
	il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_TID_DISABLE_TX;
	il->stations[sta_id].sta.tid_disable_tx &= FUNC0(~(1 << tid));
	il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
	FUNC3(&sta_cmd, &il->stations[sta_id].sta,
	       sizeof(struct il_addsta_cmd));
	FUNC5(&il->sta_lock, flags);

	return FUNC1(il, &sta_cmd, CMD_SYNC);
}