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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int /*<<< orphan*/  csum_level; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  truesize; } ;
struct napi_struct {int dummy; } ;
struct be_rx_page_info {scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
struct be_rx_obj {struct be_adapter* adapter; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; scalar_t__ num_rcvd; int /*<<< orphan*/  vlan_tag; scalar_t__ vlanf; int /*<<< orphan*/  tunneled; int /*<<< orphan*/  rss_hash; } ;
struct be_adapter {TYPE_1__* netdev; struct be_rx_obj* rx_obj; } ;
struct TYPE_4__ {scalar_t__ nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 struct be_rx_page_info* FUNC3 (struct be_rx_obj*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC7 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ rx_frag_size ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC17(struct be_rx_obj *rxo,
				    struct napi_struct *napi,
				    struct be_rx_compl_info *rxcp)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_rx_page_info *page_info;
	struct sk_buff *skb = NULL;
	u16 remaining, curr_frag_len;
	u16 i, j;

	skb = FUNC7(napi);
	if (!skb) {
		FUNC2(rxo, rxcp);
		return;
	}

	remaining = rxcp->pkt_size;
	for (i = 0, j = -1; i < rxcp->num_rcvd; i++) {
		page_info = FUNC3(rxo);

		curr_frag_len = FUNC6(remaining, rx_frag_size);

		/* Coalesce all frags from the same physical page in one slot */
		if (i == 0 || page_info->page_offset == 0) {
			/* First frag or Fresh page */
			j++;
			FUNC11(skb, j, page_info->page);
			FUNC10(&FUNC16(skb)->frags[j],
					 page_info->page_offset);
			FUNC13(&FUNC16(skb)->frags[j], 0);
		} else {
			FUNC9(page_info->page);
		}
		FUNC12(&FUNC16(skb)->frags[j], curr_frag_len);
		skb->truesize += rx_frag_size;
		remaining -= curr_frag_len;
		FUNC5(page_info, 0, sizeof(*page_info));
	}
	FUNC0(j > MAX_SKB_FRAGS);

	FUNC16(skb)->nr_frags = j + 1;
	skb->len = rxcp->pkt_size;
	skb->data_len = rxcp->pkt_size;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC14(skb, rxo - &adapter->rx_obj[0]);
	if (adapter->netdev->features & NETIF_F_RXHASH)
		FUNC15(skb, rxcp->rss_hash, PKT_HASH_TYPE_L3);

	skb->csum_level = rxcp->tunneled;

	if (rxcp->vlanf)
		FUNC1(skb, FUNC4(ETH_P_8021Q), rxcp->vlan_tag);

	FUNC8(napi);
}