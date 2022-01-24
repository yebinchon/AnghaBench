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
typedef  int u16 ;
struct tx_packet_desc {int word3; int word2; } ;
struct sk_buff {scalar_t__ len; scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct atl1_tpd_ring {int /*<<< orphan*/  next_to_use; } ;
struct atl1_adapter {TYPE_1__* pdev; struct atl1_tpd_ring tpd_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {unsigned int nr_frags; unsigned int gso_size; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int ATL1_MAX_TX_BUF_LEN ; 
 struct tx_packet_desc* FUNC0 (struct atl1_tpd_ring*,int) ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int TPD_INS_VL_TAG_SHIFT ; 
 int TPD_VLANTAG_MASK ; 
 int TPD_VLANTAG_SHIFT ; 
 int FUNC1 (struct atl1_tpd_ring*) ; 
 int FUNC2 (struct atl1_adapter*,struct sk_buff*,struct tx_packet_desc*) ; 
 int FUNC3 (struct atl1_adapter*,struct sk_buff*,struct tx_packet_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1_adapter*,struct sk_buff*,struct tx_packet_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1_adapter*,int,struct tx_packet_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tx_packet_desc*,int /*<<< orphan*/ ,int) ; 
 struct atl1_adapter* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct sk_buff*) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 unsigned int FUNC18 (struct sk_buff*) ; 
 int FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 unsigned int FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC23(struct sk_buff *skb,
					 struct net_device *netdev)
{
	struct atl1_adapter *adapter = FUNC12(netdev);
	struct atl1_tpd_ring *tpd_ring = &adapter->tpd_ring;
	int len;
	int tso;
	int count = 1;
	int ret_val;
	struct tx_packet_desc *ptpd;
	u16 vlan_tag;
	unsigned int nr_frags = 0;
	unsigned int mss = 0;
	unsigned int f;
	unsigned int proto_hdr_len;

	len = FUNC16(skb);

	if (FUNC22(skb->len <= 0)) {
		FUNC8(skb);
		return NETDEV_TX_OK;
	}

	nr_frags = FUNC17(skb)->nr_frags;
	for (f = 0; f < nr_frags; f++) {
		unsigned int f_size = FUNC15(&FUNC17(skb)->frags[f]);
		count += (f_size + ATL1_MAX_TX_BUF_LEN - 1) /
			 ATL1_MAX_TX_BUF_LEN;
	}

	mss = FUNC17(skb)->gso_size;
	if (mss) {
		if (skb->protocol == FUNC10(ETH_P_IP)) {
			proto_hdr_len = (FUNC18(skb) +
					 FUNC21(skb));
			if (FUNC22(proto_hdr_len > len)) {
				FUNC8(skb);
				return NETDEV_TX_OK;
			}
			/* need additional TPD ? */
			if (proto_hdr_len != len)
				count += (len - proto_hdr_len +
					ATL1_MAX_TX_BUF_LEN - 1) /
					ATL1_MAX_TX_BUF_LEN;
		}
	}

	if (FUNC1(&adapter->tpd_ring) < count) {
		/* not enough descriptors */
		FUNC14(netdev);
		if (FUNC13(adapter))
			FUNC9(KERN_DEBUG, &adapter->pdev->dev,
				"tx busy\n");
		return NETDEV_TX_BUSY;
	}

	ptpd = FUNC0(tpd_ring,
		(u16) FUNC7(&tpd_ring->next_to_use));
	FUNC11(ptpd, 0, sizeof(struct tx_packet_desc));

	if (FUNC20(skb)) {
		vlan_tag = FUNC19(skb);
		vlan_tag = (vlan_tag << 4) | (vlan_tag >> 13) |
			((vlan_tag >> 9) & 0x8);
		ptpd->word3 |= 1 << TPD_INS_VL_TAG_SHIFT;
		ptpd->word2 |= (vlan_tag & TPD_VLANTAG_MASK) <<
			TPD_VLANTAG_SHIFT;
	}

	tso = FUNC2(adapter, skb, ptpd);
	if (tso < 0) {
		FUNC8(skb);
		return NETDEV_TX_OK;
	}

	if (!tso) {
		ret_val = FUNC3(adapter, skb, ptpd);
		if (ret_val < 0) {
			FUNC8(skb);
			return NETDEV_TX_OK;
		}
	}

	FUNC4(adapter, skb, ptpd);
	FUNC5(adapter, count, ptpd);
	FUNC6(adapter);
	return NETDEV_TX_OK;
}