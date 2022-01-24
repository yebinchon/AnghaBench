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
struct uap_rxpd {int /*<<< orphan*/  rx_pkt_offset; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_dest; } ;
struct rx_packet_hdr {TYPE_1__ eth803_hdr; } ;
struct mwifiex_private {int /*<<< orphan*/  media_connected; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_private*,struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC9(struct mwifiex_private *priv,
				  struct sk_buff *skb)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct uap_rxpd *uap_rx_pd;
	struct rx_packet_hdr *rx_pkt_hdr;
	u8 ra[ETH_ALEN];
	struct sk_buff *skb_uap;

	uap_rx_pd = (struct uap_rxpd *)(skb->data);
	rx_pkt_hdr = (void *)uap_rx_pd + FUNC2(uap_rx_pd->rx_pkt_offset);

	/* don't do packet forwarding in disconnected state */
	if (!priv->media_connected) {
		FUNC4(adapter, ERROR,
			    "drop packet in disconnected state.\n");
		FUNC0(skb);
		return 0;
	}

	FUNC3(ra, rx_pkt_hdr->eth803_hdr.h_dest, ETH_ALEN);

	if (FUNC1(ra)) {
		skb_uap = FUNC8(skb, GFP_ATOMIC);
		FUNC7(priv, skb_uap);
	} else {
		if (FUNC5(priv, ra)) {
			/* Requeue Intra-BSS packet */
			FUNC7(priv, skb);
			return 0;
		}
	}

	/* Forward unicat/Inter-BSS packets to kernel. */
	return FUNC6(priv, skb);
}