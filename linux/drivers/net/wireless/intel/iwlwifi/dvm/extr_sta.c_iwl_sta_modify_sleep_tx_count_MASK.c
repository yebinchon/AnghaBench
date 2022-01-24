#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_priv {int dummy; } ;
struct TYPE_2__ {int sta_id; int /*<<< orphan*/  modify_mask; } ;
struct iwl_addsta_cmd {int /*<<< orphan*/  sleep_tx_count; TYPE_1__ sta; int /*<<< orphan*/  station_flags_msk; int /*<<< orphan*/  station_flags; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  STA_CONTROL_MODIFY_MSK ; 
 int /*<<< orphan*/  STA_FLG_PWR_SAVE_MSK ; 
 int /*<<< orphan*/  STA_MODIFY_SLEEP_TX_COUNT_MSK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,struct iwl_addsta_cmd*,int /*<<< orphan*/ ) ; 

void FUNC2(struct iwl_priv *priv, int sta_id, int cnt)
{
	struct iwl_addsta_cmd cmd = {
		.mode = STA_CONTROL_MODIFY_MSK,
		.station_flags = STA_FLG_PWR_SAVE_MSK,
		.station_flags_msk = STA_FLG_PWR_SAVE_MSK,
		.sta.sta_id = sta_id,
		.sta.modify_mask = STA_MODIFY_SLEEP_TX_COUNT_MSK,
		.sleep_tx_count = FUNC0(cnt),
	};

	FUNC1(priv, &cmd, CMD_ASYNC);
}