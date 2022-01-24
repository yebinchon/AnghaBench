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
struct il_priv {int dummy; } ;
struct il_bt_cmd {scalar_t__ flags; int /*<<< orphan*/  kill_cts_mask; int /*<<< orphan*/  kill_ack_mask; int /*<<< orphan*/  max_kill; int /*<<< orphan*/  lead_time; } ;

/* Variables and functions */
 scalar_t__ BT_COEX_DISABLE ; 
 scalar_t__ BT_COEX_ENABLE ; 
 int /*<<< orphan*/  BT_LEAD_TIME_DEF ; 
 int /*<<< orphan*/  BT_MAX_KILL_DEF ; 
 int /*<<< orphan*/  C_BT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  bt_coex_active ; 
 scalar_t__ FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int,struct il_bt_cmd*) ; 

void
FUNC3(struct il_priv *il)
{
	struct il_bt_cmd bt_cmd = {
		.lead_time = BT_LEAD_TIME_DEF,
		.max_kill = BT_MAX_KILL_DEF,
		.kill_ack_mask = 0,
		.kill_cts_mask = 0,
	};

	if (!bt_coex_active)
		bt_cmd.flags = BT_COEX_DISABLE;
	else
		bt_cmd.flags = BT_COEX_ENABLE;

	FUNC0("BT coex %s\n",
	       (bt_cmd.flags == BT_COEX_DISABLE) ? "disable" : "active");

	if (FUNC2(il, C_BT_CONFIG, sizeof(struct il_bt_cmd), &bt_cmd))
		FUNC1("failed to send BT Coex Config\n");
}