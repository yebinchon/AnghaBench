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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_rx_status {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ath10k_htt {int rx_confused; TYPE_1__ rx_ring; struct ieee80211_rx_status rx_status; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;
typedef  enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;

/* Variables and functions */
 int ATH10K_PKT_RX_ERR_MAX ; 
 int EIO ; 
 int RX_HTT_HDR_STATUS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int FUNC2 (struct ath10k_htt*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,struct sk_buff_head*,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,struct sk_buff_head*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,int /*<<< orphan*/ *,unsigned long,int,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,char*,int) ; 
 unsigned long FUNC10 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	struct ieee80211_rx_status *rx_status = &htt->rx_status;
	struct sk_buff_head amsdu;
	int ret;
	unsigned long drop_cnt = 0;
	unsigned long unchain_cnt = 0;
	unsigned long drop_cnt_filter = 0;
	unsigned long msdus_to_queue, num_msdus;
	enum ath10k_pkt_rx_err err = ATH10K_PKT_RX_ERR_MAX;
	u8 first_hdr[RX_HTT_HDR_STATUS_LEN];

	FUNC0(&amsdu);

	FUNC11(&htt->rx_ring.lock);
	if (htt->rx_confused) {
		FUNC12(&htt->rx_ring.lock);
		return -EIO;
	}
	ret = FUNC2(htt, &amsdu);
	FUNC12(&htt->rx_ring.lock);

	if (ret < 0) {
		FUNC9(ar, "rx ring became corrupted: %d\n", ret);
		FUNC1(&amsdu);
		/* FIXME: It's probably a good idea to reboot the
		 * device instead of leaving it inoperable.
		 */
		htt->rx_confused = true;
		return ret;
	}

	num_msdus = FUNC10(&amsdu);

	FUNC6(ar, &amsdu, rx_status, 0xffff);

	/* only for ret = 1 indicates chained msdus */
	if (ret > 0)
		FUNC7(ar, &amsdu, &drop_cnt, &unchain_cnt);

	FUNC4(ar, &amsdu, rx_status, &drop_cnt_filter);
	FUNC5(ar, &amsdu, rx_status, true, first_hdr, &err);
	msdus_to_queue = FUNC10(&amsdu);
	FUNC3(ar, &amsdu, rx_status);

	FUNC8(ar, first_hdr, num_msdus, err,
				       unchain_cnt, drop_cnt, drop_cnt_filter,
				       msdus_to_queue);

	return 0;
}