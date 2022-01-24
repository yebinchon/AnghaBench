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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ autoneg; int /*<<< orphan*/  rmt_adv; } ;
struct tg3 {int mac_mode; TYPE_1__ link_config; } ;

/* Variables and functions */
 int ADVERTISE_1000XPAUSE ; 
 int ADVERTISE_1000XPSE_ASYM ; 
 int ANEG_CFG_PS1 ; 
 int ANEG_CFG_PS2 ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int LPA_1000XPAUSE ; 
 int LPA_1000XPAUSE_ASYM ; 
 int /*<<< orphan*/  MAC_MODE ; 
 int MAC_MODE_SEND_CONFIGS ; 
 int /*<<< orphan*/  MAC_STATUS ; 
 int MAC_STATUS_CFG_CHANGED ; 
 int MAC_STATUS_PCS_SYNCED ; 
 int MAC_STATUS_RCVD_CFG ; 
 int MAC_STATUS_SYNC_CHANGED ; 
 int MR_LP_ADV_ASYM_PAUSE ; 
 int MR_LP_ADV_SYM_PAUSE ; 
 scalar_t__ FUNC0 (struct tg3*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static bool FUNC6(struct tg3 *tp, u32 mac_status)
{
	bool current_link_up = false;

	if (!(mac_status & MAC_STATUS_PCS_SYNCED))
		goto out;

	if (tp->link_config.autoneg == AUTONEG_ENABLE) {
		u32 txflags, rxflags;
		int i;

		if (FUNC0(tp, &txflags, &rxflags)) {
			u32 local_adv = 0, remote_adv = 0;

			if (txflags & ANEG_CFG_PS1)
				local_adv |= ADVERTISE_1000XPAUSE;
			if (txflags & ANEG_CFG_PS2)
				local_adv |= ADVERTISE_1000XPSE_ASYM;

			if (rxflags & MR_LP_ADV_SYM_PAUSE)
				remote_adv |= LPA_1000XPAUSE;
			if (rxflags & MR_LP_ADV_ASYM_PAUSE)
				remote_adv |= LPA_1000XPAUSE_ASYM;

			tp->link_config.rmt_adv =
					   FUNC1(remote_adv);

			FUNC2(tp, local_adv, remote_adv);

			current_link_up = true;
		}
		for (i = 0; i < 30; i++) {
			FUNC5(20);
			FUNC4(MAC_STATUS,
			       (MAC_STATUS_SYNC_CHANGED |
				MAC_STATUS_CFG_CHANGED));
			FUNC5(40);
			if ((FUNC3(MAC_STATUS) &
			     (MAC_STATUS_SYNC_CHANGED |
			      MAC_STATUS_CFG_CHANGED)) == 0)
				break;
		}

		mac_status = FUNC3(MAC_STATUS);
		if (!current_link_up &&
		    (mac_status & MAC_STATUS_PCS_SYNCED) &&
		    !(mac_status & MAC_STATUS_RCVD_CFG))
			current_link_up = true;
	} else {
		FUNC2(tp, 0, 0);

		/* Forcing 1000FD link up. */
		current_link_up = true;

		FUNC4(MAC_MODE, (tp->mac_mode | MAC_MODE_SEND_CONFIGS));
		FUNC5(40);

		FUNC4(MAC_MODE, tp->mac_mode);
		FUNC5(40);
	}

out:
	return current_link_up;
}