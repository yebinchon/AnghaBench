#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ts_info {scalar_t__ tstamp; scalar_t__ dur; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ath_node {int /*<<< orphan*/  ackto; } ;
struct TYPE_6__ {size_t h_rb; size_t t_rb; scalar_t__* tstamp; } ;
struct TYPE_5__ {size_t h_rb; size_t t_rb; TYPE_1__* addr; struct ts_info* ts; } ;
struct ath_dynack {TYPE_3__ ack_rbf; TYPE_2__ st_rbf; scalar_t__ lto; } ;
struct ath_hw {int /*<<< orphan*/  hw; struct ath_dynack dynack; } ;
struct TYPE_4__ {int /*<<< orphan*/ * h_src; int /*<<< orphan*/ * h_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_DYN_BUF ; 
 scalar_t__ COMPUTE_TO ; 
 int /*<<< orphan*/  DYNACK ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 struct ieee80211_sta* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct ath_hw *ah)
{
	struct ath_dynack *da = &ah->dynack;
	u32 ackto, ack_ts, max_to;
	struct ieee80211_sta *sta;
	struct ts_info *st_ts;
	struct ath_node *an;
	u8 *dst, *src;

	FUNC7();

	max_to = FUNC5(ah);
	while (da->st_rbf.h_rb != da->st_rbf.t_rb &&
	       da->ack_rbf.h_rb != da->ack_rbf.t_rb) {
		ack_ts = da->ack_rbf.tstamp[da->ack_rbf.h_rb];
		st_ts = &da->st_rbf.ts[da->st_rbf.h_rb];
		dst = da->st_rbf.addr[da->st_rbf.h_rb].h_dest;
		src = da->st_rbf.addr[da->st_rbf.h_rb].h_src;

		FUNC2(FUNC1(ah), DYNACK,
			"ack_ts %u st_ts %u st_dur %u [%u-%u]\n",
			ack_ts, st_ts->tstamp, st_ts->dur,
			da->ack_rbf.h_rb, da->st_rbf.h_rb);

		if (ack_ts > st_ts->tstamp + st_ts->dur) {
			ackto = ack_ts - st_ts->tstamp - st_ts->dur;

			if (ackto < max_to) {
				sta = FUNC6(ah->hw, dst,
								   src);
				if (sta) {
					an = (struct ath_node *)sta->drv_priv;
					an->ackto = FUNC4(an->ackto,
								    ackto);
					FUNC2(FUNC1(ah), DYNACK,
						"%pM to %d [%u]\n", dst,
						an->ackto, ackto);
					if (FUNC9(da->lto)) {
						FUNC3(ah);
						da->lto = jiffies + COMPUTE_TO;
					}
				}
				FUNC0(da->ack_rbf.h_rb, ATH_DYN_BUF);
			}
			FUNC0(da->st_rbf.h_rb, ATH_DYN_BUF);
		} else {
			FUNC0(da->ack_rbf.h_rb, ATH_DYN_BUF);
		}
	}

	FUNC8();
}