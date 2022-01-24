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
struct il_priv {scalar_t__ num_stations; int /*<<< orphan*/  sta_lock; TYPE_1__* stations; } ;
struct TYPE_2__ {int used; int /*<<< orphan*/ * lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t const,size_t const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t const*) ; 
 int EINVAL ; 
 size_t const IL_INVALID_STATION ; 
 int IL_STA_DRIVER_ACTIVE ; 
 int IL_STA_LOCAL ; 
 int IL_STA_UCODE_ACTIVE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*,size_t const*,size_t const,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC9(struct il_priv *il, const u8 sta_id, const u8 * addr)
{
	unsigned long flags;

	if (!FUNC4(il)) {
		FUNC2("Unable to remove station %pM, device not ready.\n",
		       addr);
		/*
		 * It is typical for stations to be removed when we are
		 * going down. Return success since device will be down
		 * soon anyway
		 */
		return 0;
	}

	FUNC1("Removing STA from driver:%d  %pM\n", sta_id, addr);

	if (FUNC3(sta_id == IL_INVALID_STATION))
		return -EINVAL;

	FUNC7(&il->sta_lock, flags);

	if (!(il->stations[sta_id].used & IL_STA_DRIVER_ACTIVE)) {
		FUNC2("Removing %pM but non DRIVER active\n", addr);
		goto out_err;
	}

	if (!(il->stations[sta_id].used & IL_STA_UCODE_ACTIVE)) {
		FUNC2("Removing %pM but non UCODE active\n", addr);
		goto out_err;
	}

	if (il->stations[sta_id].used & IL_STA_LOCAL) {
		FUNC6(il->stations[sta_id].lq);
		il->stations[sta_id].lq = NULL;
	}

	il->stations[sta_id].used &= ~IL_STA_DRIVER_ACTIVE;

	il->num_stations--;

	FUNC0(il->num_stations < 0);

	FUNC8(&il->sta_lock, flags);

	return FUNC5(il, addr, sta_id, false);
out_err:
	FUNC8(&il->sta_lock, flags);
	return -EINVAL;
}