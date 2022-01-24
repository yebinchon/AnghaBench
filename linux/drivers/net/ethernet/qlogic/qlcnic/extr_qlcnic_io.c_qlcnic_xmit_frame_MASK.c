#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  encapsulation; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct qlcnic_skb_frag {int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int /*<<< orphan*/  xmit_called; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  xmit_off; } ;
struct qlcnic_host_tx_ring {size_t num_desc; size_t producer; TYPE_1__ tx_stats; struct qlcnic_cmd_buffer* cmd_buf_arr; struct cmd_desc_type0* desc_head; int /*<<< orphan*/  txq; } ;
struct qlcnic_cmd_buffer {int frag_count; struct qlcnic_skb_frag* frag_array; struct sk_buff* skb; } ;
struct TYPE_7__ {int /*<<< orphan*/  txdropped; int /*<<< orphan*/  tx_dma_map_error; } ;
struct qlcnic_adapter {int flags; TYPE_2__ stats; scalar_t__ drv_mac_learn; int /*<<< orphan*/  portnum; struct pci_dev* pdev; struct qlcnic_host_tx_ring* tx_ring; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  state; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_source; } ;
struct cmd_desc_type0 {void* addr_buffer4; void* addr_buffer3; void* addr_buffer2; void* addr_buffer1; int /*<<< orphan*/ * buffer_length; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_10__ {scalar_t__ protocol; } ;
struct TYPE_9__ {scalar_t__ nexthdr; } ;
struct TYPE_8__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int QLCNIC_MACSPOOF ; 
 int QLCNIC_MAX_FRAGS_PER_TX ; 
 scalar_t__ TX_STOP_THRESH ; 
 int /*<<< orphan*/  __QLCNIC_DEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (size_t,size_t) ; 
 TYPE_5__* FUNC6 (struct sk_buff*) ; 
 TYPE_4__* FUNC7 (struct sk_buff*) ; 
 struct qlcnic_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC15 (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC17 (struct cmd_desc_type0*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct cmd_desc_type0*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct qlcnic_host_tx_ring*) ; 
 int FUNC20 (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ; 
 int FUNC21 (struct qlcnic_adapter*,struct cmd_desc_type0*,struct sk_buff*,struct qlcnic_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct sk_buff*,struct qlcnic_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC23 (struct qlcnic_host_tx_ring*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 size_t FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 TYPE_3__* FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 () ; 

netdev_tx_t FUNC32(struct sk_buff *skb, struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC8(netdev);
	struct qlcnic_host_tx_ring *tx_ring;
	struct qlcnic_cmd_buffer *pbuf;
	struct qlcnic_skb_frag *buffrag;
	struct cmd_desc_type0 *hwdesc, *first_desc;
	struct pci_dev *pdev;
	struct ethhdr *phdr;
	int i, k, frag_count, delta = 0;
	u32 producer, num_txd;
	u16 protocol;
	bool l4_is_udp = false;

	if (!FUNC29(__QLCNIC_DEV_UP, &adapter->state)) {
		FUNC10(netdev);
		return NETDEV_TX_BUSY;
	}

	if (adapter->flags & QLCNIC_MACSPOOF) {
		phdr = (struct ethhdr *)skb->data;
		if (!FUNC4(phdr->h_source, adapter->mac_addr))
			goto drop_packet;
	}

	tx_ring = &adapter->tx_ring[FUNC25(skb)];
	num_txd = tx_ring->num_desc;

	frag_count = FUNC27(skb)->nr_frags + 1;

	/* 14 frags supported for normal packet and
	 * 32 frags supported for TSO packet
	 */
	if (!FUNC26(skb) && frag_count > QLCNIC_MAX_FRAGS_PER_TX) {
		for (i = 0; i < (frag_count - QLCNIC_MAX_FRAGS_PER_TX); i++)
			delta += FUNC24(&FUNC27(skb)->frags[i]);

		if (!FUNC0(skb, delta))
			goto drop_packet;

		frag_count = 1 + FUNC27(skb)->nr_frags;
	}

	if (FUNC30(FUNC19(tx_ring) <= TX_STOP_THRESH)) {
		FUNC11(tx_ring->txq);
		if (FUNC19(tx_ring) > TX_STOP_THRESH) {
			FUNC9(tx_ring->txq);
		} else {
			tx_ring->tx_stats.xmit_off++;
			return NETDEV_TX_BUSY;
		}
	}

	producer = tx_ring->producer;
	pbuf = &tx_ring->cmd_buf_arr[producer];
	pdev = adapter->pdev;
	first_desc = &tx_ring->desc_head[producer];
	hwdesc = &tx_ring->desc_head[producer];
	FUNC13((u64 *)hwdesc);

	if (FUNC15(pdev, skb, pbuf)) {
		adapter->stats.tx_dma_map_error++;
		goto drop_packet;
	}

	pbuf->skb = skb;
	pbuf->frag_count = frag_count;

	FUNC17(first_desc, frag_count, skb->len);
	FUNC18(first_desc, adapter->portnum);

	for (i = 0; i < frag_count; i++) {
		k = i % 4;

		if ((k == 0) && (i > 0)) {
			/* move to next desc.*/
			producer = FUNC5(producer, num_txd);
			hwdesc = &tx_ring->desc_head[producer];
			FUNC13((u64 *)hwdesc);
			tx_ring->cmd_buf_arr[producer].skb = NULL;
		}

		buffrag = &pbuf->frag_array[i];
		hwdesc->buffer_length[k] = FUNC1(buffrag->length);
		switch (k) {
		case 0:
			hwdesc->addr_buffer1 = FUNC2(buffrag->dma);
			break;
		case 1:
			hwdesc->addr_buffer2 = FUNC2(buffrag->dma);
			break;
		case 2:
			hwdesc->addr_buffer3 = FUNC2(buffrag->dma);
			break;
		case 3:
			hwdesc->addr_buffer4 = FUNC2(buffrag->dma);
			break;
		}
	}

	tx_ring->producer = FUNC5(producer, num_txd);
	FUNC28();

	protocol = FUNC12(skb->protocol);
	if (protocol == ETH_P_IP)
		l4_is_udp = FUNC6(skb)->protocol == IPPROTO_UDP;
	else if (protocol == ETH_P_IPV6)
		l4_is_udp = FUNC7(skb)->nexthdr == IPPROTO_UDP;

	/* Check if it is a VXLAN packet */
	if (!skb->encapsulation || !l4_is_udp ||
	    !FUNC14(adapter)) {
		if (FUNC30(FUNC21(adapter, first_desc, skb,
					   tx_ring)))
			goto unwind_buff;
	} else {
		if (FUNC30(FUNC20(adapter, first_desc,
						 skb, tx_ring)))
			goto unwind_buff;
	}

	if (adapter->drv_mac_learn)
		FUNC16(adapter, first_desc, skb, tx_ring);

	tx_ring->tx_stats.tx_bytes += skb->len;
	tx_ring->tx_stats.xmit_called++;

	/* Ensure writes are complete before HW fetches Tx descriptors */
	FUNC31();
	FUNC23(tx_ring);

	return NETDEV_TX_OK;

unwind_buff:
	FUNC22(pdev, skb, pbuf);
drop_packet:
	adapter->stats.txdropped++;
	FUNC3(skb);
	return NETDEV_TX_OK;
}