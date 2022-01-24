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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {struct net_device* dev; scalar_t__ cb; } ;
struct net_device {int flags; int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  name; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;
struct hostap_skb_tx_data {int /*<<< orphan*/  tx_cb_idx; struct hostap_interface* iface; int /*<<< orphan*/  magic; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {struct net_device* dev; } ;
typedef  TYPE_1__ local_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_AP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HOSTAP_SKB_TX_DATA_MAGIC ; 
 int /*<<< orphan*/  IEEE80211_FCTL_FROMDS ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hostap_skb_tx_data*,int /*<<< orphan*/ ,int) ; 
 struct hostap_interface* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,char*,int) ; 
 struct ieee80211_hdr* FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev,
			     u16 type_subtype, char *body,
			     int body_len, u8 *addr, u16 tx_cb_idx)
{
	struct hostap_interface *iface;
	local_info_t *local;
	struct ieee80211_hdr *hdr;
	u16 fc;
	struct sk_buff *skb;
	struct hostap_skb_tx_data *meta;
	int hdrlen;

	iface = FUNC10(dev);
	local = iface->local;
	dev = local->dev; /* always use master radio device */
	iface = FUNC10(dev);

	if (!(dev->flags & IFF_UP)) {
		FUNC0(DEBUG_AP, "%s: prism2_send_mgmt - device is not UP - "
		       "cannot send frame\n", dev->name);
		return;
	}

	skb = FUNC2(sizeof(*hdr) + body_len);
	if (skb == NULL) {
		FUNC0(DEBUG_AP, "%s: prism2_send_mgmt failed to allocate "
		       "skb\n", dev->name);
		return;
	}

	fc = type_subtype;
	hdrlen = FUNC5(FUNC1(type_subtype));
	hdr = FUNC12(skb, hdrlen);
	if (body)
		FUNC11(skb, body, body_len);

	/* FIX: ctrl::ack sending used special HFA384X_TX_CTRL_802_11
	 * tx_control instead of using local->tx_control */


	FUNC8(hdr->addr1, addr, ETH_ALEN); /* DA / RA */
	if (FUNC7(hdr->frame_control)) {
		fc |= IEEE80211_FCTL_FROMDS;
		FUNC8(hdr->addr2, dev->dev_addr, ETH_ALEN); /* BSSID */
		FUNC8(hdr->addr3, dev->dev_addr, ETH_ALEN); /* SA */
	} else if (FUNC6(hdr->frame_control)) {
		/* control:ACK does not have addr2 or addr3 */
		FUNC4(hdr->addr2);
		FUNC4(hdr->addr3);
	} else {
		FUNC8(hdr->addr2, dev->dev_addr, ETH_ALEN); /* SA */
		FUNC8(hdr->addr3, dev->dev_addr, ETH_ALEN); /* BSSID */
	}

	hdr->frame_control = FUNC1(fc);

	meta = (struct hostap_skb_tx_data *) skb->cb;
	FUNC9(meta, 0, sizeof(*meta));
	meta->magic = HOSTAP_SKB_TX_DATA_MAGIC;
	meta->iface = iface;
	meta->tx_cb_idx = tx_cb_idx;

	skb->dev = dev;
	FUNC13(skb);
	FUNC14(skb);
	FUNC3(skb);
}