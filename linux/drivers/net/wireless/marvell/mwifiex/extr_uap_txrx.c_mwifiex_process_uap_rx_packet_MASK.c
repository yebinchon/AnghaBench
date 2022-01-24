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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct uap_rxpd {size_t priority; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  rx_pkt_type; int /*<<< orphan*/  rx_pkt_length; int /*<<< orphan*/  rx_pkt_offset; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_source; } ;
struct rx_packet_hdr {TYPE_1__ eth803_hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_failed; } ;
struct mwifiex_sta_node {scalar_t__* rx_seq; TYPE_2__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_dropped; } ;
struct mwifiex_private {TYPE_3__ stats; int /*<<< orphan*/  ap_11n_enabled; int /*<<< orphan*/  sta_list_spinlock; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  ERROR ; 
 int ETH_ALEN ; 
 size_t MAX_NUM_TID ; 
 scalar_t__ PKT_TYPE_AMSDU ; 
 scalar_t__ PKT_TYPE_BAR ; 
 scalar_t__ PKT_TYPE_MGMT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*,size_t,scalar_t__*) ; 
 int FUNC4 (struct mwifiex_private*,scalar_t__,size_t,scalar_t__*,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 struct mwifiex_sta_node* FUNC6 (struct mwifiex_private*,scalar_t__*) ; 
 int FUNC7 (struct mwifiex_private*,struct sk_buff*) ; 
 int FUNC8 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mwifiex_private *priv,
				  struct sk_buff *skb)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	int ret;
	struct uap_rxpd *uap_rx_pd;
	struct rx_packet_hdr *rx_pkt_hdr;
	u16 rx_pkt_type;
	u8 ta[ETH_ALEN], pkt_type;
	struct mwifiex_sta_node *node;

	uap_rx_pd = (struct uap_rxpd *)(skb->data);
	rx_pkt_type = FUNC2(uap_rx_pd->rx_pkt_type);
	rx_pkt_hdr = (void *)uap_rx_pd + FUNC2(uap_rx_pd->rx_pkt_offset);

	FUNC1(ta, rx_pkt_hdr->eth803_hdr.h_source);

	if ((FUNC2(uap_rx_pd->rx_pkt_offset) +
	     FUNC2(uap_rx_pd->rx_pkt_length)) > (u16) skb->len) {
		FUNC5(adapter, ERROR,
			    "wrong rx packet: len=%d, offset=%d, length=%d\n",
			    skb->len, FUNC2(uap_rx_pd->rx_pkt_offset),
			    FUNC2(uap_rx_pd->rx_pkt_length));
		priv->stats.rx_dropped++;

		node = FUNC6(priv, ta);
		if (node)
			node->stats.tx_failed++;

		FUNC0(skb);
		return 0;
	}

	if (rx_pkt_type == PKT_TYPE_MGMT) {
		ret = FUNC8(priv, skb);
		if (ret)
			FUNC5(adapter, DATA, "Rx of mgmt packet failed");
		FUNC0(skb);
		return ret;
	}


	if (rx_pkt_type != PKT_TYPE_BAR && uap_rx_pd->priority < MAX_NUM_TID) {
		FUNC9(&priv->sta_list_spinlock);
		node = FUNC6(priv, ta);
		if (node)
			node->rx_seq[uap_rx_pd->priority] =
						FUNC2(uap_rx_pd->seq_num);
		FUNC10(&priv->sta_list_spinlock);
	}

	if (!priv->ap_11n_enabled ||
	    (!FUNC3(priv, uap_rx_pd->priority, ta) &&
	    (FUNC2(uap_rx_pd->rx_pkt_type) != PKT_TYPE_AMSDU))) {
		ret = FUNC7(priv, skb);
		return ret;
	}

	/* Reorder and send to kernel */
	pkt_type = (u8)FUNC2(uap_rx_pd->rx_pkt_type);
	ret = FUNC4(priv, FUNC2(uap_rx_pd->seq_num),
					 uap_rx_pd->priority, ta, pkt_type,
					 skb);

	if (ret || (rx_pkt_type == PKT_TYPE_BAR))
		FUNC0(skb);

	if (ret)
		priv->stats.rx_dropped++;

	return ret;
}