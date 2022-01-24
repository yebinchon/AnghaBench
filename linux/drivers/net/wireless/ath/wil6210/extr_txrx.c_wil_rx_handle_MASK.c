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
struct wireless_dev {scalar_t__ iftype; } ;
struct wil_ring {int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct wil6210_priv {struct wil_ring ring_rx; struct net_device* main_ndev; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct wil6210_priv*,struct wil_ring*) ; 

void FUNC9(struct wil6210_priv *wil, int *quota)
{
	struct net_device *ndev = wil->main_ndev;
	struct wireless_dev *wdev = ndev->ieee80211_ptr;
	struct wil_ring *v = &wil->ring_rx;
	struct sk_buff *skb;

	if (FUNC2(!v->va)) {
		FUNC4(wil, "Rx IRQ while Rx not yet initialized\n");
		return;
	}
	FUNC3(wil, "rx_handle\n");
	while ((*quota > 0) && (NULL != (skb = FUNC8(wil, v)))) {
		(*quota)--;

		/* monitor is currently supported on main interface only */
		if (wdev->iftype == NL80211_IFTYPE_MONITOR) {
			skb->dev = ndev;
			FUNC1(skb);
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			skb->pkt_type = PACKET_OTHERHOST;
			skb->protocol = FUNC0(ETH_P_802_2);
			FUNC5(skb, ndev);
		} else {
			FUNC7(wil, skb);
		}
	}
	FUNC6(wil, v->size);
}