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
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_2__* stations; } ;
struct il_hw_key {int dummy; } ;
struct il_addsta_cmd {int dummy; } ;
struct il4965_keyinfo {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  modify_mask; } ;
struct TYPE_7__ {int /*<<< orphan*/  key_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  mode; TYPE_1__ sta; TYPE_3__ key; } ;
struct TYPE_6__ {TYPE_4__ sta; TYPE_3__ keyinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_KEY_FLG_NO_ENC ; 
 int /*<<< orphan*/  STA_MODIFY_KEY_MASK ; 
 int FUNC1 (struct il_priv*,struct il_addsta_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_addsta_cmd*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il, u8 sta_id)
{
	unsigned long flags;
	struct il_addsta_cmd sta_cmd;

	FUNC4(&il->sta_lock, flags);
	FUNC3(&il->stations[sta_id].keyinfo, 0, sizeof(struct il_hw_key));
	FUNC3(&il->stations[sta_id].sta.key, 0, sizeof(struct il4965_keyinfo));
	il->stations[sta_id].sta.key.key_flags = STA_KEY_FLG_NO_ENC;
	il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_KEY_MASK;
	il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;
	FUNC2(&sta_cmd, &il->stations[sta_id].sta,
	       sizeof(struct il_addsta_cmd));
	FUNC5(&il->sta_lock, flags);

	FUNC0("hwcrypto: clear ucode station key info\n");
	return FUNC1(il, &sta_cmd, CMD_SYNC);
}