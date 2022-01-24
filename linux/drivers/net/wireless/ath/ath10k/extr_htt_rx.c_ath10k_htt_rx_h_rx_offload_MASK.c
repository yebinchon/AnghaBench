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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  flag; } ;
struct htt_rx_offload_msdu {int /*<<< orphan*/  vdev_id; int /*<<< orphan*/  msdu_len; } ;
struct ath10k_htt {struct ieee80211_rx_status rx_status; } ;
struct ath10k {struct ath10k_htt htt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_FLAG_NO_SIGNAL_VAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,struct ieee80211_rx_status*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct ieee80211_rx_status*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_rx_status*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 size_t FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct ath10k *ar,
				       struct sk_buff_head *list)
{
	struct ath10k_htt *htt = &ar->htt;
	struct ieee80211_rx_status *status = &htt->rx_status;
	struct htt_rx_offload_msdu *rx;
	struct sk_buff *msdu;
	size_t offset;

	while ((msdu = FUNC1(list))) {
		/* Offloaded frames don't have Rx descriptor. Instead they have
		 * a short meta information header.
		 */

		rx = (void *)msdu->data;

		FUNC10(msdu, sizeof(*rx));
		FUNC9(msdu, sizeof(*rx));

		if (FUNC11(msdu) < FUNC0(rx->msdu_len)) {
			FUNC5(ar, "dropping frame: offloaded rx msdu is too long!\n");
			FUNC6(msdu);
			continue;
		}

		FUNC10(msdu, FUNC0(rx->msdu_len));

		/* Offloaded rx header length isn't multiple of 2 nor 4 so the
		 * actual payload is unaligned. Align the frame.  Otherwise
		 * mac80211 complains.  This shouldn't reduce performance much
		 * because these offloaded frames are rare.
		 */
		offset = 4 - ((unsigned long)msdu->data & 3);
		FUNC10(msdu, offset);
		FUNC7(msdu->data + offset, msdu->data, msdu->len);
		FUNC9(msdu, offset);

		/* FIXME: The frame is NWifi. Re-construct QoS Control
		 * if possible later.
		 */

		FUNC8(status, 0, sizeof(*status));
		status->flag |= RX_FLAG_NO_SIGNAL_VAL;

		FUNC4(status, msdu);
		FUNC2(ar, status, NULL, rx->vdev_id);
		FUNC3(ar, status, msdu);
	}
}