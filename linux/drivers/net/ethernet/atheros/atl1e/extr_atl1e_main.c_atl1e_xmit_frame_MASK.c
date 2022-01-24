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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct atl1e_tpd_desc {int word3; scalar_t__ word2; } ;
struct atl1e_adapter {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TPD_ETHTYPE_SHIFT ; 
 int TPD_INS_VL_TAG_SHIFT ; 
 scalar_t__ TPD_VLANTAG_MASK ; 
 scalar_t__ TPD_VLAN_SHIFT ; 
 int TPD_VL_TAGGED_SHIFT ; 
 int /*<<< orphan*/  __AT_DOWN ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct atl1e_tpd_desc* FUNC2 (struct atl1e_adapter*) ; 
 scalar_t__ FUNC3 (struct atl1e_adapter*) ; 
 scalar_t__ FUNC4 (struct atl1e_adapter*,struct sk_buff*,struct atl1e_tpd_desc*) ; 
 scalar_t__ FUNC5 (struct atl1e_adapter*,struct sk_buff*,struct atl1e_tpd_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1e_adapter*,scalar_t__,struct atl1e_tpd_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct atl1e_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb,
					  struct net_device *netdev)
{
	struct atl1e_adapter *adapter = FUNC9(netdev);
	u16 tpd_req = 1;
	struct atl1e_tpd_desc *tpd;

	if (FUNC14(__AT_DOWN, &adapter->flags)) {
		FUNC7(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC15(skb->len <= 0)) {
		FUNC7(skb);
		return NETDEV_TX_OK;
	}
	tpd_req = FUNC1(skb);

	if (FUNC3(adapter) < tpd_req) {
		/* no enough descriptor, just stop queue */
		FUNC10(netdev);
		return NETDEV_TX_BUSY;
	}

	tpd = FUNC2(adapter);

	if (FUNC13(skb)) {
		u16 vlan_tag = FUNC12(skb);
		u16 atl1e_vlan_tag;

		tpd->word3 |= 1 << TPD_INS_VL_TAG_SHIFT;
		FUNC0(vlan_tag, atl1e_vlan_tag);
		tpd->word2 |= (atl1e_vlan_tag & TPD_VLANTAG_MASK) <<
				TPD_VLAN_SHIFT;
	}

	if (skb->protocol == FUNC8(ETH_P_8021Q))
		tpd->word3 |= 1 << TPD_VL_TAGGED_SHIFT;

	if (FUNC11(skb) != ETH_HLEN)
		tpd->word3 |= 1 << TPD_ETHTYPE_SHIFT; /* 802.3 frame */

	/* do TSO and check sum */
	if (FUNC4(adapter, skb, tpd) != 0) {
		FUNC7(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC5(adapter, skb, tpd)) {
		FUNC7(skb);
		goto out;
	}

	FUNC6(adapter, tpd_req, tpd);
out:
	return NETDEV_TX_OK;
}