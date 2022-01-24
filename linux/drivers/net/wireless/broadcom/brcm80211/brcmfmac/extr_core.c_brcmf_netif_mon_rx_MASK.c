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
struct TYPE_2__ {int /*<<< orphan*/  RxStatus1; } ;
struct wlc_d11rxhdr {TYPE_1__ rxhdr; } ;
struct sk_buff {int len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct ieee80211_radiotap_header {void* it_len; } ;
struct brcmf_if {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR ; 
 int /*<<< orphan*/  BRCMF_FEAT_MONITOR_FMT_RADIOTAP ; 
 scalar_t__ D11_PHY_HDR_LEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int RXS_PBPRES ; 
 scalar_t__ FUNC0 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,struct sk_buff*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_radiotap_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 struct ieee80211_radiotap_header* FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

void FUNC9(struct brcmf_if *ifp, struct sk_buff *skb)
{
	if (FUNC0(ifp, BRCMF_FEAT_MONITOR_FMT_RADIOTAP)) {
		/* Do nothing */
	} else if (FUNC0(ifp, BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR)) {
		struct wlc_d11rxhdr *wlc_rxhdr = (struct wlc_d11rxhdr *)skb->data;
		struct ieee80211_radiotap_header *radiotap;
		unsigned int offset;
		u16 RxStatus1;

		RxStatus1 = FUNC4(wlc_rxhdr->rxhdr.RxStatus1);

		offset = sizeof(struct wlc_d11rxhdr);
		/* MAC inserts 2 pad bytes for a4 headers or QoS or A-MSDU
		 * subframes
		 */
		if (RxStatus1 & RXS_PBPRES)
			offset += 2;
		offset += D11_PHY_HDR_LEN;

		FUNC6(skb, offset);

		/* TODO: use RX header to fill some radiotap data */
		radiotap = FUNC7(skb, sizeof(*radiotap));
		FUNC5(radiotap, 0, sizeof(*radiotap));
		radiotap->it_len = FUNC2(sizeof(*radiotap));

		/* TODO: 4 bytes with receive status? */
		skb->len -= 4;
	} else {
		struct ieee80211_radiotap_header *radiotap;

		/* TODO: use RX status to fill some radiotap data */
		radiotap = FUNC7(skb, sizeof(*radiotap));
		FUNC5(radiotap, 0, sizeof(*radiotap));
		radiotap->it_len = FUNC2(sizeof(*radiotap));

		/* TODO: 4 bytes with receive status? */
		skb->len -= 4;
	}

	skb->dev = ifp->ndev;
	FUNC8(skb);
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC3(ETH_P_802_2);

	FUNC1(ifp, skb);
}