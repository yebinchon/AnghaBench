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
struct sk_buff {int truesize; int len; scalar_t__ data; } ;
struct mwl8k_priv {TYPE_1__* hw; scalar_t__ ap_fw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct mwl8k_dma_data {int /*<<< orphan*/  fwlen; struct ieee80211_hdr wh; } ;
struct ieee80211_cts {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IEEE80211_QOS_CTL_LEN ; 
 int REDUCED_TX_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hdr*,struct ieee80211_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8(struct mwl8k_priv *priv, struct sk_buff *skb,
						int head_pad, int tail_pad)
{
	struct ieee80211_hdr *wh;
	int hdrlen;
	int reqd_hdrlen;
	struct mwl8k_dma_data *tr;

	/*
	 * Add a firmware DMA header; the firmware requires that we
	 * present a 2-byte payload length followed by a 4-address
	 * header (without QoS field), followed (optionally) by any
	 * WEP/ExtIV header (but only filled in for CCMP).
	 */
	wh = (struct ieee80211_hdr *)skb->data;

	hdrlen = FUNC1(wh->frame_control);

	/*
	 * Check if skb_resize is required because of
	 * tx_headroom adjustment.
	 */
	if (priv->ap_fw && (hdrlen < (sizeof(struct ieee80211_cts)
						+ REDUCED_TX_HEADROOM))) {
		if (FUNC5(skb, REDUCED_TX_HEADROOM, 0, GFP_ATOMIC)) {

			FUNC7(priv->hw->wiphy,
					"Failed to reallocate TX buffer\n");
			return;
		}
		skb->truesize += REDUCED_TX_HEADROOM;
	}

	reqd_hdrlen = sizeof(*tr) + head_pad;

	if (hdrlen != reqd_hdrlen)
		FUNC6(skb, reqd_hdrlen - hdrlen);

	if (FUNC2(wh->frame_control))
		hdrlen -= IEEE80211_QOS_CTL_LEN;

	tr = (struct mwl8k_dma_data *)skb->data;
	if (wh != &tr->wh)
		FUNC3(&tr->wh, wh, hdrlen);
	if (hdrlen != sizeof(tr->wh))
		FUNC4(((void *)&tr->wh) + hdrlen, 0, sizeof(tr->wh) - hdrlen);

	/*
	 * Firmware length is the length of the fully formed "802.11
	 * payload".  That is, everything except for the 802.11 header.
	 * This includes all crypto material including the MIC.
	 */
	tr->fwlen = FUNC0(skb->len - sizeof(*tr) + tail_pad);
}