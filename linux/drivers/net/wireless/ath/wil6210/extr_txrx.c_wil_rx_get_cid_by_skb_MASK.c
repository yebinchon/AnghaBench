#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct wil6210_vif {TYPE_2__ wdev; } ;
struct wil6210_priv {int max_assoc_sta; TYPE_1__* sta; struct wil6210_vif** vifs; } ;
struct vring_rx_desc {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_hdr_3addr {unsigned char* addr2; } ;
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ ETH_HLEN ; 
 int IEEE80211_FTYPE_DATA ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int WIL6210_RX_DESC_MAX_CID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 unsigned int FUNC4 () ; 
 int FUNC5 (struct vring_rx_desc*) ; 
 int FUNC6 (struct vring_rx_desc*) ; 
 int FUNC7 (struct vring_rx_desc*) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 struct vring_rx_desc* FUNC9 (struct sk_buff*) ; 
 scalar_t__ wil_sta_unused ; 

__attribute__((used)) static int FUNC10(struct wil6210_priv *wil, struct sk_buff *skb)
{
	struct vring_rx_desc *d = FUNC9(skb);
	int mid = FUNC7(d);
	struct wil6210_vif *vif = wil->vifs[mid];
	/* cid from DMA descriptor is limited to 3 bits.
	 * In case of cid>=8, the value would be cid modulo 8 and we need to
	 * find real cid by locating the transmitter (ta) inside sta array
	 */
	int cid = FUNC5(d);
	unsigned int snaplen = FUNC4();
	struct ieee80211_hdr_3addr *hdr;
	int i;
	unsigned char *ta;
	u8 ftype;

	/* in monitor mode there are no connections */
	if (vif->wdev.iftype == NL80211_IFTYPE_MONITOR)
		return cid;

	ftype = FUNC6(d) << 2;
	if (FUNC1(ftype == IEEE80211_FTYPE_DATA)) {
		if (FUNC2(skb->len < ETH_HLEN + snaplen)) {
			FUNC3(wil,
					    "Short data frame, len = %d\n",
					    skb->len);
			return -ENOENT;
		}
		ta = FUNC8(skb);
	} else {
		if (FUNC2(skb->len < sizeof(struct ieee80211_hdr_3addr))) {
			FUNC3(wil, "Short frame, len = %d\n",
					    skb->len);
			return -ENOENT;
		}
		hdr = (void *)skb->data;
		ta = hdr->addr2;
	}

	if (wil->max_assoc_sta <= WIL6210_RX_DESC_MAX_CID)
		return cid;

	/* assuming no concurrency between AP interfaces and STA interfaces.
	 * multista is used only in P2P_GO or AP mode. In other modes return
	 * cid from the rx descriptor
	 */
	if (vif->wdev.iftype != NL80211_IFTYPE_P2P_GO &&
	    vif->wdev.iftype != NL80211_IFTYPE_AP)
		return cid;

	/* For Rx packets cid from rx descriptor is limited to 3 bits (0..7),
	 * to find the real cid, compare transmitter address with the stored
	 * stations mac address in the driver sta array
	 */
	for (i = cid; i < wil->max_assoc_sta; i += WIL6210_RX_DESC_MAX_CID) {
		if (wil->sta[i].status != wil_sta_unused &&
		    FUNC0(wil->sta[i].addr, ta)) {
			cid = i;
			break;
		}
	}
	if (i >= wil->max_assoc_sta) {
		FUNC3(wil, "Could not find cid for frame with transmit addr = %pM, iftype = %d, frametype = %d, len = %d\n",
				    ta, vif->wdev.iftype, ftype, skb->len);
		cid = -ENOENT;
	}

	return cid;
}