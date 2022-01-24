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
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; scalar_t__ dev; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ap_data {TYPE_1__* local; } ;
struct TYPE_2__ {scalar_t__ apdev; int /*<<< orphan*/  hostapd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  IEEE80211_FCTL_VERS ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sk_buff *skb, int ok, void *data)
{
	struct ap_data *ap = data;
	struct ieee80211_hdr *hdr;

	if (!ap->local->hostapd || !ap->local->apdev) {
		FUNC3(skb);
		return;
	}

	/* Pass the TX callback frame to the hostapd; use 802.11 header version
	 * 1 to indicate failure (no ACK) and 2 success (frame ACKed) */

	hdr = (struct ieee80211_hdr *) skb->data;
	hdr->frame_control &= FUNC2(~IEEE80211_FCTL_VERS);
	hdr->frame_control |= FUNC2(ok ? FUNC0(1) : FUNC0(0));

	skb->dev = ap->local->apdev;
	FUNC7(skb, FUNC4(hdr->frame_control));
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC1(ETH_P_802_2);
	FUNC5(skb->cb, 0, sizeof(skb->cb));
	FUNC6(skb);
}