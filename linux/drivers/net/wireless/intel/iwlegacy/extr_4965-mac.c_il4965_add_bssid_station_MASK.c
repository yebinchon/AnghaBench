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
typedef  size_t u8 ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct il_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct il_link_quality_cmd* lq; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SYNC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t IL_INVALID_STATION ; 
 int /*<<< orphan*/  IL_STA_LOCAL ; 
 struct il_link_quality_cmd* FUNC1 (struct il_priv*,size_t) ; 
 int FUNC2 (struct il_priv*,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC3 (struct il_priv*,struct il_link_quality_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct il_priv *il, const u8 *addr, u8 *sta_id_r)
{
	int ret;
	u8 sta_id;
	struct il_link_quality_cmd *link_cmd;
	unsigned long flags;

	if (sta_id_r)
		*sta_id_r = IL_INVALID_STATION;

	ret = FUNC2(il, addr, 0, NULL, &sta_id);
	if (ret) {
		FUNC0("Unable to add station %pM\n", addr);
		return ret;
	}

	if (sta_id_r)
		*sta_id_r = sta_id;

	FUNC4(&il->sta_lock, flags);
	il->stations[sta_id].used |= IL_STA_LOCAL;
	FUNC5(&il->sta_lock, flags);

	/* Set up default rate scaling table in device's station table */
	link_cmd = FUNC1(il, sta_id);
	if (!link_cmd) {
		FUNC0("Unable to initialize rate scaling for station %pM.\n",
		       addr);
		return -ENOMEM;
	}

	ret = FUNC3(il, link_cmd, CMD_SYNC, true);
	if (ret)
		FUNC0("Link quality command failed (%d)\n", ret);

	FUNC4(&il->sta_lock, flags);
	il->stations[sta_id].lq = link_cmd;
	FUNC5(&il->sta_lock, flags);

	return 0;
}