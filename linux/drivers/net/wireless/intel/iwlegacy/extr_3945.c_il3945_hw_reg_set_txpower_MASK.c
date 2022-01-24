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
typedef  size_t u8 ;
struct il_priv {scalar_t__ tx_power_user_lmt; size_t channel_count; struct il_channel_info* channel_info; } ;
struct il_channel_info {scalar_t__ curr_txpow; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 scalar_t__ FUNC2 (struct il_channel_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,struct il_channel_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

int
FUNC6(struct il_priv *il, s8 power)
{
	struct il_channel_info *ch_info;
	s8 max_power;
	u8 i;

	if (il->tx_power_user_lmt == power) {
		FUNC0("Requested Tx power same as current " "limit: %ddBm.\n",
			power);
		return 0;
	}

	FUNC0("Setting upper limit clamp to %ddBm.\n", power);
	il->tx_power_user_lmt = power;

	/* set up new Tx powers for each and every channel, 2.4 and 5.x */

	for (i = 0; i < il->channel_count; i++) {
		ch_info = &il->channel_info[i];

		/* find minimum power of all user and regulatory constraints
		 *    (does not consider h/w clipping limitations) */
		max_power = FUNC2(ch_info);
		max_power = FUNC5(power, max_power);
		if (max_power != ch_info->curr_txpow) {
			ch_info->curr_txpow = max_power;

			/* this considers the h/w clipping limitations */
			FUNC3(il, ch_info);
		}
	}

	/* update txpower settings for all channels,
	 *   send to NIC if associated. */
	FUNC4(il);
	FUNC1(il);

	return 0;
}