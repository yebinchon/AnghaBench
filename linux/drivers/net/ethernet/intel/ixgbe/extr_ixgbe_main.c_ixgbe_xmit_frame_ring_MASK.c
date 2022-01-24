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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct vlan_hdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct vlan_ethhdr {scalar_t__ h_vlan_TCI; } ;
struct sk_buff {scalar_t__ protocol; int priority; scalar_t__ data; int /*<<< orphan*/  len; } ;
struct ixgbe_tx_buffer {int gso_segs; int tx_flags; struct sk_buff* skb; scalar_t__ protocol; int /*<<< orphan*/  bytecount; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_busy; } ;
struct ixgbe_ring {size_t next_to_use; int /*<<< orphan*/  state; TYPE_2__* netdev; struct ixgbe_tx_buffer* tx_buffer_info; TYPE_1__ tx_stats; } ;
struct ixgbe_ipsec_tx_data {int /*<<< orphan*/  member_0; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  state; int /*<<< orphan*/  ptp_tx_work; struct sk_buff* ptp_tx_skb; int /*<<< orphan*/  tx_hwtstamp_skipped; int /*<<< orphan*/  ptp_tx_start; scalar_t__ ptp_clock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  _vhdr ;
typedef  scalar_t__ __be16 ;
struct TYPE_6__ {unsigned short nr_frags; int tx_flags; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int ETH_P_8021Q ; 
 int ETH_P_FCOE ; 
 int IXGBE_FLAG_DCB_ENABLED ; 
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int IXGBE_TX_FLAGS_CC ; 
 int IXGBE_TX_FLAGS_HW_VLAN ; 
 int IXGBE_TX_FLAGS_SW_VLAN ; 
 int IXGBE_TX_FLAGS_TSTAMP ; 
 int IXGBE_TX_FLAGS_VLAN_PRIO_MASK ; 
 int IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT ; 
 int IXGBE_TX_FLAGS_VLAN_SHIFT ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NETIF_F_FCOE_CRC ; 
 int NETIF_F_FSO ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int TC_PRIO_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_PTP_TX_IN_PROGRESS ; 
 int /*<<< orphan*/  __IXGBE_TX_FDIR_INIT_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ; 
 int FUNC6 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,struct ixgbe_ipsec_tx_data*) ; 
 scalar_t__ FUNC8 (struct ixgbe_ring*,scalar_t__) ; 
 int FUNC9 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ *,struct ixgbe_ipsec_tx_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,struct ixgbe_ipsec_tx_data*) ; 
 scalar_t__ FUNC11 (struct ixgbe_ring*,struct ixgbe_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC16 (struct sk_buff*) ; 
 struct vlan_hdr* FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,int,struct vlan_hdr*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 scalar_t__ FUNC26 (struct sk_buff*) ; 

netdev_tx_t FUNC27(struct sk_buff *skb,
			  struct ixgbe_adapter *adapter,
			  struct ixgbe_ring *tx_ring)
{
	struct ixgbe_tx_buffer *first;
	int tso;
	u32 tx_flags = 0;
	unsigned short f;
	u16 count = FUNC0(FUNC18(skb));
	struct ixgbe_ipsec_tx_data ipsec_tx = { 0 };
	__be16 protocol = skb->protocol;
	u8 hdr_len = 0;

	/*
	 * need: 1 descriptor per page * PAGE_SIZE/IXGBE_MAX_DATA_PER_TXD,
	 *       + 1 desc for skb_headlen/IXGBE_MAX_DATA_PER_TXD,
	 *       + 2 desc gap to keep tail from touching head,
	 *       + 1 desc for context descriptor,
	 * otherwise try next time
	 */
	for (f = 0; f < FUNC19(skb)->nr_frags; f++)
		count += FUNC0(FUNC15(
						&FUNC19(skb)->frags[f]));

	if (FUNC8(tx_ring, count + 3)) {
		tx_ring->tx_stats.tx_busy++;
		return NETDEV_TX_BUSY;
	}

	/* record the location of the first descriptor for this packet */
	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
	first->skb = skb;
	first->bytecount = skb->len;
	first->gso_segs = 1;

	/* if we have a HW VLAN tag being added default to the HW one */
	if (FUNC21(skb)) {
		tx_flags |= FUNC20(skb) << IXGBE_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
	/* else if it is a SW VLAN check the next protocol and store the tag */
	} else if (protocol == FUNC4(ETH_P_8021Q)) {
		struct vlan_hdr *vhdr, _vhdr;
		vhdr = FUNC17(skb, ETH_HLEN, sizeof(_vhdr), &_vhdr);
		if (!vhdr)
			goto out_drop;

		tx_flags |= FUNC12(vhdr->h_vlan_TCI) <<
				  IXGBE_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IXGBE_TX_FLAGS_SW_VLAN;
	}
	protocol = FUNC25(skb);

	if (FUNC24(FUNC19(skb)->tx_flags & SKBTX_HW_TSTAMP) &&
	    adapter->ptp_clock) {
		if (!FUNC22(__IXGBE_PTP_TX_IN_PROGRESS,
					   &adapter->state)) {
			FUNC19(skb)->tx_flags |= SKBTX_IN_PROGRESS;
			tx_flags |= IXGBE_TX_FLAGS_TSTAMP;

			/* schedule check for Tx timestamp */
			adapter->ptp_tx_skb = FUNC16(skb);
			adapter->ptp_tx_start = jiffies;
			FUNC13(&adapter->ptp_tx_work);
		} else {
			adapter->tx_hwtstamp_skipped++;
		}
	}

#ifdef CONFIG_PCI_IOV
	/*
	 * Use the l2switch_enable flag - would be false if the DMA
	 * Tx switch had been disabled.
	 */
	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
		tx_flags |= IXGBE_TX_FLAGS_CC;

#endif
	/* DCB maps skb priorities 0-7 onto 3 bit PCP of VLAN tag. */
	if ((adapter->flags & IXGBE_FLAG_DCB_ENABLED) &&
	    ((tx_flags & (IXGBE_TX_FLAGS_HW_VLAN | IXGBE_TX_FLAGS_SW_VLAN)) ||
	     (skb->priority != TC_PRIO_CONTROL))) {
		tx_flags &= ~IXGBE_TX_FLAGS_VLAN_PRIO_MASK;
		tx_flags |= (skb->priority & 0x7) <<
					IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT;
		if (tx_flags & IXGBE_TX_FLAGS_SW_VLAN) {
			struct vlan_ethhdr *vhdr;

			if (FUNC14(skb, 0))
				goto out_drop;
			vhdr = (struct vlan_ethhdr *)skb->data;
			vhdr->h_vlan_TCI = FUNC4(tx_flags >>
						 IXGBE_TX_FLAGS_VLAN_SHIFT);
		} else {
			tx_flags |= IXGBE_TX_FLAGS_HW_VLAN;
		}
	}

	/* record initial flags and protocol */
	first->tx_flags = tx_flags;
	first->protocol = protocol;

#ifdef IXGBE_FCOE
	/* setup tx offload for FCoE */
	if ((protocol == htons(ETH_P_FCOE)) &&
	    (tx_ring->netdev->features & (NETIF_F_FSO | NETIF_F_FCOE_CRC))) {
		tso = ixgbe_fso(tx_ring, first, &hdr_len);
		if (tso < 0)
			goto out_drop;

		goto xmit_fcoe;
	}

#endif /* IXGBE_FCOE */

#ifdef CONFIG_IXGBE_IPSEC
	if (xfrm_offload(skb) &&
	    !ixgbe_ipsec_tx(tx_ring, first, &ipsec_tx))
		goto out_drop;
#endif
	tso = FUNC9(tx_ring, first, &hdr_len, &ipsec_tx);
	if (tso < 0)
		goto out_drop;
	else if (!tso)
		FUNC10(tx_ring, first, &ipsec_tx);

	/* add the ATR filter if ATR is on */
	if (FUNC23(__IXGBE_TX_FDIR_INIT_DONE, &tx_ring->state))
		FUNC5(tx_ring, first);

#ifdef IXGBE_FCOE
xmit_fcoe:
#endif /* IXGBE_FCOE */
	if (FUNC11(tx_ring, first, hdr_len))
		goto cleanup_tx_timestamp;

	return NETDEV_TX_OK;

out_drop:
	FUNC3(first->skb);
	first->skb = NULL;
cleanup_tx_timestamp:
	if (FUNC24(tx_flags & IXGBE_TX_FLAGS_TSTAMP)) {
		FUNC3(adapter->ptp_tx_skb);
		adapter->ptp_tx_skb = NULL;
		FUNC1(&adapter->ptp_tx_work);
		FUNC2(__IXGBE_PTP_TX_IN_PROGRESS, &adapter->state);
	}

	return NETDEV_TX_OK;
}