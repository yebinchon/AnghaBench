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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct rxpd {int /*<<< orphan*/  rx_pkt_length; int /*<<< orphan*/  rx_pkt_offset; int /*<<< orphan*/  rx_pkt_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  h_proto; } ;
struct rx_packet_hdr {TYPE_2__ eth803_hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  iftype; } ;
struct mwifiex_private {scalar_t__ bss_role; TYPE_3__* adapter; TYPE_1__ wdev; int /*<<< orphan*/  curr_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ETH_P_TDLS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 scalar_t__ PKT_TYPE_AMSDU ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mwifiex_private*,struct sk_buff*) ; 
 int FUNC8 (struct mwifiex_private*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct mwifiex_private *priv,
					  struct sk_buff *skb)
{
	struct rxpd *local_rx_pd = (struct rxpd *)(skb->data);
	int ret;

	if (FUNC4(local_rx_pd->rx_pkt_type) == PKT_TYPE_AMSDU) {
		struct sk_buff_head list;
		struct sk_buff *rx_skb;

		FUNC2(&list);

		FUNC10(skb, FUNC4(local_rx_pd->rx_pkt_offset));
		FUNC12(skb, FUNC4(local_rx_pd->rx_pkt_length));

		FUNC3(skb, &list, priv->curr_addr,
					 priv->wdev.iftype, 0, NULL, NULL);

		while (!FUNC11(&list)) {
			struct rx_packet_hdr *rx_hdr;

			rx_skb = FUNC1(&list);
			rx_hdr = (struct rx_packet_hdr *)rx_skb->data;
			if (FUNC0(priv->adapter->fw_cap_info) &&
			    FUNC9(rx_hdr->eth803_hdr.h_proto) == ETH_P_TDLS) {
				FUNC6(priv,
								  (u8 *)rx_hdr,
								  skb->len);
			}

			if (priv->bss_role == MWIFIEX_BSS_ROLE_UAP)
				ret = FUNC8(priv, rx_skb);
			else
				ret = FUNC7(priv, rx_skb);
			if (ret == -1)
				FUNC5(priv->adapter, ERROR,
					    "Rx of A-MSDU failed");
		}
		return 0;
	}

	return -1;
}