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
typedef  int u8 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct il_link_quality_cmd {size_t sta_id; } ;
struct il_host_cmd {int len; int flags; struct il_link_quality_cmd* data; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CMD_ASYNC ; 
 int /*<<< orphan*/  C_TX_LINK_QUALITY_CMD ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int EINVAL ; 
 size_t IL_INVALID_STATION ; 
 int IL_STA_DRIVER_ACTIVE ; 
 int IL_STA_UCODE_INPROGRESS ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,struct il_link_quality_cmd*) ; 
 scalar_t__ FUNC4 (struct il_priv*,struct il_link_quality_cmd*) ; 
 int FUNC5 (struct il_priv*,struct il_host_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(struct il_priv *il, struct il_link_quality_cmd *lq,
	       u8 flags, bool init)
{
	int ret = 0;
	unsigned long flags_spin;

	struct il_host_cmd cmd = {
		.id = C_TX_LINK_QUALITY_CMD,
		.len = sizeof(struct il_link_quality_cmd),
		.flags = flags,
		.data = lq,
	};

	if (FUNC2(lq->sta_id == IL_INVALID_STATION))
		return -EINVAL;

	FUNC6(&il->sta_lock, flags_spin);
	if (!(il->stations[lq->sta_id].used & IL_STA_DRIVER_ACTIVE)) {
		FUNC7(&il->sta_lock, flags_spin);
		return -EINVAL;
	}
	FUNC7(&il->sta_lock, flags_spin);

	FUNC3(il, lq);
	FUNC0(init && (cmd.flags & CMD_ASYNC));

	if (FUNC4(il, lq))
		ret = FUNC5(il, &cmd);
	else
		ret = -EINVAL;

	if (cmd.flags & CMD_ASYNC)
		return ret;

	if (init) {
		FUNC1("init LQ command complete,"
		       " clearing sta addition status for sta %d\n",
		       lq->sta_id);
		FUNC6(&il->sta_lock, flags_spin);
		il->stations[lq->sta_id].used &= ~IL_STA_UCODE_INPROGRESS;
		FUNC7(&il->sta_lock, flags_spin);
	}
	return ret;
}