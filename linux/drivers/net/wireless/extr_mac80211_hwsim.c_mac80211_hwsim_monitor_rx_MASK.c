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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  dev; } ;
struct mac80211_hwsim_data {int dummy; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_rate {int bitrate; int flags; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct ieee80211_channel {int center_freq; } ;
struct TYPE_2__ {int /*<<< orphan*/  it_present; void* it_len; scalar_t__ it_pad; int /*<<< orphan*/  it_version; } ;
struct hwsim_radiotap_hdr {int rt_rate; void* rt_chbitmask; void* rt_channel; scalar_t__ rt_flags; int /*<<< orphan*/  rt_tsft; TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE80211_CHAN_2GHZ ; 
 int IEEE80211_CHAN_CCK ; 
 int IEEE80211_CHAN_OFDM ; 
 int IEEE80211_RADIOTAP_CHANNEL ; 
 int IEEE80211_RADIOTAP_FLAGS ; 
 int IEEE80211_RADIOTAP_RATE ; 
 int IEEE80211_RADIOTAP_TSFT ; 
 int IEEE80211_RATE_ERP_G ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  PKTHDR_RADIOTAP_VERSION ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mac80211_hwsim_data*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwsim_mon ; 
 struct ieee80211_rate* FUNC6 (struct ieee80211_hw*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hwsim_radiotap_hdr* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw,
				      struct sk_buff *tx_skb,
				      struct ieee80211_channel *chan)
{
	struct mac80211_hwsim_data *data = hw->priv;
	struct sk_buff *skb;
	struct hwsim_radiotap_hdr *hdr;
	u16 flags;
	struct ieee80211_tx_info *info = FUNC0(tx_skb);
	struct ieee80211_rate *txrate = FUNC6(hw, info);

	if (FUNC1(!txrate))
		return;

	if (!FUNC8(hwsim_mon))
		return;

	skb = FUNC10(tx_skb, sizeof(*hdr), 0, GFP_ATOMIC);
	if (skb == NULL)
		return;

	hdr = FUNC11(skb, sizeof(*hdr));
	hdr->hdr.it_version = PKTHDR_RADIOTAP_VERSION;
	hdr->hdr.it_pad = 0;
	hdr->hdr.it_len = FUNC3(sizeof(*hdr));
	hdr->hdr.it_present = FUNC4((1 << IEEE80211_RADIOTAP_FLAGS) |
					  (1 << IEEE80211_RADIOTAP_RATE) |
					  (1 << IEEE80211_RADIOTAP_TSFT) |
					  (1 << IEEE80211_RADIOTAP_CHANNEL));
	hdr->rt_tsft = FUNC2(data);
	hdr->rt_flags = 0;
	hdr->rt_rate = txrate->bitrate / 5;
	hdr->rt_channel = FUNC3(chan->center_freq);
	flags = IEEE80211_CHAN_2GHZ;
	if (txrate->flags & IEEE80211_RATE_ERP_G)
		flags |= IEEE80211_CHAN_OFDM;
	else
		flags |= IEEE80211_CHAN_CCK;
	hdr->rt_chbitmask = FUNC3(flags);

	skb->dev = hwsim_mon;
	FUNC12(skb);
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC5(ETH_P_802_2);
	FUNC7(skb->cb, 0, sizeof(skb->cb));
	FUNC9(skb);
}