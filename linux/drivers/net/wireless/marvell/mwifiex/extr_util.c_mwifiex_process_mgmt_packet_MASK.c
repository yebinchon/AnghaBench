#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct rxpd {int /*<<< orphan*/  nf; int /*<<< orphan*/  snr; int /*<<< orphan*/  rx_pkt_length; int /*<<< orphan*/  rx_pkt_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_5__ {TYPE_1__ chan; } ;
struct TYPE_6__ {scalar_t__ iftype; } ;
struct mwifiex_private {TYPE_2__ roc_cfg; TYPE_3__ wdev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  mgmt_frame_mask; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  pkt_len ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,int /*<<< orphan*/ *,int,struct rxpd*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

int
FUNC9(struct mwifiex_private *priv,
			    struct sk_buff *skb)
{
	struct rxpd *rx_pd;
	u16 pkt_len;
	struct ieee80211_hdr *ieee_hdr;

	if (!skb)
		return -1;

	if (!priv->mgmt_frame_mask ||
	    priv->wdev.iftype == NL80211_IFTYPE_UNSPECIFIED) {
		FUNC6(priv->adapter, ERROR,
			    "do not receive mgmt frames on uninitialized intf");
		return -1;
	}

	rx_pd = (struct rxpd *)skb->data;

	FUNC8(skb, FUNC4(rx_pd->rx_pkt_offset));
	FUNC8(skb, sizeof(pkt_len));

	pkt_len = FUNC4(rx_pd->rx_pkt_length);

	ieee_hdr = (void *)skb->data;
	if (FUNC3(ieee_hdr->frame_control)) {
		if (FUNC7(priv, (u8 *)ieee_hdr,
					      pkt_len, rx_pd))
			return -1;
	}
	/* Remove address4 */
	FUNC5(skb->data + sizeof(struct ieee80211_hdr_3addr),
		skb->data + sizeof(struct ieee80211_hdr),
		pkt_len - sizeof(struct ieee80211_hdr));

	pkt_len -= ETH_ALEN + sizeof(pkt_len);
	rx_pd->rx_pkt_length = FUNC2(pkt_len);

	FUNC1(&priv->wdev, priv->roc_cfg.chan.center_freq,
			 FUNC0(rx_pd->snr, rx_pd->nf), skb->data, pkt_len,
			 0);

	return 0;
}