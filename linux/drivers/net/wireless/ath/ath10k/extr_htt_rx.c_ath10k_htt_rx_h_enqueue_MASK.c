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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  flag; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_FLAG_ALLOW_SAME_PN ; 
 int /*<<< orphan*/  RX_FLAG_AMSDU_MORE ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ieee80211_rx_status*,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 scalar_t__ FUNC3 (struct sk_buff_head*) ; 

__attribute__((used)) static void FUNC4(struct ath10k *ar,
				    struct sk_buff_head *amsdu,
				    struct ieee80211_rx_status *status)
{
	struct sk_buff *msdu;
	struct sk_buff *first_subframe;

	first_subframe = FUNC2(amsdu);

	while ((msdu = FUNC0(amsdu))) {
		/* Setup per-MSDU flags */
		if (FUNC3(amsdu))
			status->flag &= ~RX_FLAG_AMSDU_MORE;
		else
			status->flag |= RX_FLAG_AMSDU_MORE;

		if (msdu == first_subframe) {
			first_subframe = NULL;
			status->flag &= ~RX_FLAG_ALLOW_SAME_PN;
		} else {
			status->flag |= RX_FLAG_ALLOW_SAME_PN;
		}

		FUNC1(ar, status, msdu);
	}
}