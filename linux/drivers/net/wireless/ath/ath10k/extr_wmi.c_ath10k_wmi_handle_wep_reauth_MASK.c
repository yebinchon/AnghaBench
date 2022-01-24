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
typedef  int u8 ;
struct sk_buff {int* data; unsigned int len; } ;
struct ieee80211_rx_status {int /*<<< orphan*/  flag; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath10k {int /*<<< orphan*/  data_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 unsigned int IEEE80211_WEP_IV_LEN ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int WEP_KEYID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC1 (struct ath10k*,int*,int) ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath10k *ar,
					 struct sk_buff *skb,
					 struct ieee80211_rx_status *status)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	unsigned int hdrlen;
	bool peer_key;
	u8 *addr, keyidx;

	if (!FUNC5(hdr->frame_control) ||
	    !FUNC3(hdr->frame_control))
		return;

	hdrlen = FUNC4(hdr->frame_control);
	if (skb->len < (hdrlen + IEEE80211_WEP_IV_LEN))
		return;

	keyidx = skb->data[hdrlen + (IEEE80211_WEP_IV_LEN - 1)] >> WEP_KEYID_SHIFT;
	addr = FUNC2(hdr);

	FUNC6(&ar->data_lock);
	peer_key = FUNC1(ar, addr, keyidx);
	FUNC7(&ar->data_lock);

	if (peer_key) {
		FUNC0(ar, ATH10K_DBG_MAC,
			   "mac wep key present for peer %pM\n", addr);
		status->flag |= RX_FLAG_DECRYPTED;
	}
}