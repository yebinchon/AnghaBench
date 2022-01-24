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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int dummy; } ;
struct nx_host_tx_ring {size_t num_desc; size_t producer; struct netxen_cmd_buffer* cmd_buf_arr; struct cmd_desc_type0* desc_head; } ;
struct netxen_skb_frag {int /*<<< orphan*/  dma; int /*<<< orphan*/  length; } ;
struct netxen_cmd_buffer {int frag_count; struct netxen_skb_frag* frag_array; struct sk_buff* skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  txdropped; int /*<<< orphan*/  xmitcalled; int /*<<< orphan*/  txbytes; } ;
struct netxen_adapter {TYPE_1__ stats; int /*<<< orphan*/  portnum; struct pci_dev* pdev; struct nx_host_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;
struct cmd_desc_type0 {void* addr_buffer4; void* addr_buffer3; void* addr_buffer2; void* addr_buffer1; int /*<<< orphan*/ * buffer_length; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int NETXEN_MAX_FRAGS_PER_TX ; 
 scalar_t__ TX_STOP_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (size_t,size_t) ; 
 struct netxen_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct pci_dev*,struct sk_buff*,struct netxen_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct netxen_adapter*,struct nx_host_tx_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct cmd_desc_type0*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct cmd_desc_type0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct nx_host_tx_ring*,struct cmd_desc_type0*,struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct nx_host_tx_ring*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC20(struct sk_buff *skb, struct net_device *netdev)
{
	struct netxen_adapter *adapter = FUNC5(netdev);
	struct nx_host_tx_ring *tx_ring = adapter->tx_ring;
	struct netxen_cmd_buffer *pbuf;
	struct netxen_skb_frag *buffrag;
	struct cmd_desc_type0 *hwdesc, *first_desc;
	struct pci_dev *pdev;
	int i, k;
	int delta = 0;
	skb_frag_t *frag;

	u32 producer;
	int frag_count;
	u32 num_txd = tx_ring->num_desc;

	frag_count = FUNC17(skb)->nr_frags + 1;

	/* 14 frags supported for normal packet and
	 * 32 frags supported for TSO packet
	 */
	if (!FUNC16(skb) && frag_count > NETXEN_MAX_FRAGS_PER_TX) {

		for (i = 0; i < (frag_count - NETXEN_MAX_FRAGS_PER_TX); i++) {
			frag = &FUNC17(skb)->frags[i];
			delta += FUNC15(frag);
		}

		if (!FUNC0(skb, delta))
			goto drop_packet;

		frag_count = 1 + FUNC17(skb)->nr_frags;
	}

	if (FUNC19(FUNC14(tx_ring) <= TX_STOP_THRESH)) {
		FUNC7(netdev);
		FUNC18();
		if (FUNC14(tx_ring) > TX_STOP_THRESH)
			FUNC6(netdev);
		else
			return NETDEV_TX_BUSY;
	}

	producer = tx_ring->producer;
	pbuf = &tx_ring->cmd_buf_arr[producer];

	pdev = adapter->pdev;

	if (FUNC9(pdev, skb, pbuf))
		goto drop_packet;

	pbuf->skb = skb;
	pbuf->frag_count = frag_count;

	first_desc = hwdesc = &tx_ring->desc_head[producer];
	FUNC8((u64 *)hwdesc);

	FUNC11(first_desc, frag_count, skb->len);
	FUNC12(first_desc, adapter->portnum);

	for (i = 0; i < frag_count; i++) {

		k = i % 4;

		if ((k == 0) && (i > 0)) {
			/* move to next desc.*/
			producer = FUNC4(producer, num_txd);
			hwdesc = &tx_ring->desc_head[producer];
			FUNC8((u64 *)hwdesc);
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

	tx_ring->producer = FUNC4(producer, num_txd);

	FUNC13(netdev, tx_ring, first_desc, skb);

	adapter->stats.txbytes += skb->len;
	adapter->stats.xmitcalled++;

	FUNC10(adapter, tx_ring);

	return NETDEV_TX_OK;

drop_packet:
	adapter->stats.txdropped++;
	FUNC3(skb);
	return NETDEV_TX_OK;
}