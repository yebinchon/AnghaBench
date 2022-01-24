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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct atl1c_tpd_desc {int word1; int /*<<< orphan*/  vlan_tag; } ;
struct atl1c_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TPD_ETH_TYPE_SHIFT ; 
 int TPD_INS_VTAG_SHIFT ; 
 int /*<<< orphan*/  __AT_DOWN ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 struct atl1c_tpd_desc* FUNC2 (struct atl1c_adapter*,int) ; 
 scalar_t__ FUNC3 (struct atl1c_adapter*,int) ; 
 int atl1c_trans_normal ; 
 scalar_t__ FUNC4 (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc**,int) ; 
 scalar_t__ FUNC5 (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1c_adapter*,struct sk_buff*,struct atl1c_tpd_desc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1c_adapter*,struct atl1c_tpd_desc*,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct atl1c_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct atl1c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC19(struct sk_buff *skb,
					  struct net_device *netdev)
{
	struct atl1c_adapter *adapter = FUNC10(netdev);
	u16 tpd_req;
	struct atl1c_tpd_desc *tpd;
	enum atl1c_trans_queue type = atl1c_trans_normal;

	if (FUNC17(__AT_DOWN, &adapter->flags)) {
		FUNC9(skb);
		return NETDEV_TX_OK;
	}

	tpd_req = FUNC1(skb);

	if (FUNC3(adapter, type) < tpd_req) {
		/* no enough descriptor, just stop queue */
		FUNC13(netdev);
		return NETDEV_TX_BUSY;
	}

	tpd = FUNC2(adapter, type);

	/* do TSO and check sum */
	if (FUNC4(adapter, skb, &tpd, type) != 0) {
		FUNC9(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC18(FUNC16(skb))) {
		u16 vlan = FUNC15(skb);
		__le16 tag;

		vlan = FUNC8(vlan);
		FUNC0(vlan, tag);
		tpd->word1 |= 1 << TPD_INS_VTAG_SHIFT;
		tpd->vlan_tag = tag;
	}

	if (FUNC14(skb) != ETH_HLEN)
		tpd->word1 |= 1 << TPD_ETH_TYPE_SHIFT; /* Ethernet frame */

	if (FUNC5(adapter, skb, tpd, type) < 0) {
		FUNC12(adapter, tx_done, adapter->netdev,
			   "tx-skb dropped due to dma error\n");
		/* roll back tpd/buffer */
		FUNC7(adapter, tpd, type);
		FUNC9(skb);
	} else {
		FUNC11(adapter->netdev, skb->len);
		FUNC6(adapter, skb, tpd, type);
	}

	return NETDEV_TX_OK;
}