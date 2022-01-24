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
struct sk_buff {int /*<<< orphan*/  csum_level; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct net_device {int features; } ;
struct napi_struct {int dummy; } ;
struct be_rx_obj {struct be_adapter* adapter; } ;
struct be_rx_compl_info {int /*<<< orphan*/  vlan_tag; scalar_t__ vlanf; int /*<<< orphan*/  tunneled; int /*<<< orphan*/  rss_hash; } ;
struct be_adapter {struct be_rx_obj* rx_obj; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_drops_no_skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_RX_SKB_ALLOC_SIZE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 scalar_t__ FUNC2 (struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct sk_buff* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct be_rx_obj*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct be_rx_obj*,struct sk_buff*,struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct be_rx_obj *rxo, struct napi_struct *napi,
				struct be_rx_compl_info *rxcp)
{
	struct be_adapter *adapter = rxo->adapter;
	struct net_device *netdev = adapter->netdev;
	struct sk_buff *skb;

	skb = FUNC6(netdev, BE_RX_SKB_ALLOC_SIZE);
	if (FUNC14(!skb)) {
		FUNC8(rxo)->rx_drops_no_skbs++;
		FUNC1(rxo, rxcp);
		return;
	}

	FUNC10(rxo, skb, rxcp);

	if (FUNC5((netdev->features & NETIF_F_RXCSUM) && FUNC2(rxcp)))
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	else
		FUNC9(skb);

	skb->protocol = FUNC3(skb, netdev);
	FUNC12(skb, rxo - &adapter->rx_obj[0]);
	if (netdev->features & NETIF_F_RXHASH)
		FUNC13(skb, rxcp->rss_hash, PKT_HASH_TYPE_L3);

	skb->csum_level = rxcp->tunneled;
	FUNC11(skb, napi);

	if (rxcp->vlanf)
		FUNC0(skb, FUNC4(ETH_P_8021Q), rxcp->vlan_tag);

	FUNC7(skb);
}