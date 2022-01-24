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
typedef  int /*<<< orphan*/  u16 ;
struct ath6kl {TYPE_1__* sta_list; } ;
struct TYPE_2__ {size_t* mac; int /*<<< orphan*/  aid; } ;

/* Variables and functions */
 size_t AP_MAX_NUM_STA ; 
 int /*<<< orphan*/  ATH6KL_DBG_TRC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl*,size_t) ; 
 scalar_t__ FUNC2 (size_t*) ; 
 scalar_t__ FUNC3 (size_t*) ; 
 scalar_t__ FUNC4 (size_t*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC5(struct ath6kl *ar, u8 *mac, u16 reason)
{
	u8 i, removed = 0;

	if (FUNC3(mac))
		return removed;

	if (FUNC2(mac)) {
		FUNC0(ATH6KL_DBG_TRC, "deleting all station\n");

		for (i = 0; i < AP_MAX_NUM_STA; i++) {
			if (!FUNC3(ar->sta_list[i].mac)) {
				FUNC1(ar, i);
				removed = 1;
			}
		}
	} else {
		for (i = 0; i < AP_MAX_NUM_STA; i++) {
			if (FUNC4(ar->sta_list[i].mac, mac, ETH_ALEN) == 0) {
				FUNC0(ATH6KL_DBG_TRC,
					   "deleting station %pM aid=%d reason=%d\n",
					   mac, ar->sta_list[i].aid, reason);
				FUNC1(ar, i);
				removed = 1;
				break;
			}
		}
	}

	return removed;
}