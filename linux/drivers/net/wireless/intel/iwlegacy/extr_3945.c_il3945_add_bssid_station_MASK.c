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
struct TYPE_2__ {int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t const*) ; 
 size_t IL_INVALID_STATION ; 
 int /*<<< orphan*/  IL_STA_LOCAL ; 
 int FUNC1 (struct il_priv*,size_t const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il, const u8 * addr, u8 * sta_id_r)
{
	int ret;
	u8 sta_id;
	unsigned long flags;

	if (sta_id_r)
		*sta_id_r = IL_INVALID_STATION;

	ret = FUNC1(il, addr, 0, NULL, &sta_id);
	if (ret) {
		FUNC0("Unable to add station %pM\n", addr);
		return ret;
	}

	if (sta_id_r)
		*sta_id_r = sta_id;

	FUNC2(&il->sta_lock, flags);
	il->stations[sta_id].used |= IL_STA_LOCAL;
	FUNC3(&il->sta_lock, flags);

	return 0;
}