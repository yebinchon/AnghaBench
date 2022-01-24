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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; } ;
struct TYPE_2__ {size_t t_rb; size_t h_rb; int /*<<< orphan*/ * tstamp; } ;
struct ath_dynack {int /*<<< orphan*/  qlock; TYPE_1__ ack_rbf; int /*<<< orphan*/  enabled; } ;
struct ath_hw {struct ath_dynack dynack; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_DYN_BUF ; 
 int /*<<< orphan*/  DYNACK ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ath_hw *ah, struct sk_buff *skb,
			      u32 ts)
{
	struct ath_dynack *da = &ah->dynack;
	struct ath_common *common = FUNC1(ah);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;

	if (!da->enabled || !FUNC3(ah, hdr->addr1))
		return;

	FUNC5(&da->qlock);
	da->ack_rbf.tstamp[da->ack_rbf.t_rb] = ts;

	FUNC0(da->ack_rbf.t_rb, ATH_DYN_BUF);
	if (da->ack_rbf.t_rb == da->ack_rbf.h_rb)
		FUNC0(da->ack_rbf.h_rb, ATH_DYN_BUF);

	FUNC2(common, DYNACK, "rx sample %u [h %u-t %u]\n",
		ts, da->ack_rbf.h_rb, da->ack_rbf.t_rb);

	FUNC4(ah);

	FUNC6(&da->qlock);
}