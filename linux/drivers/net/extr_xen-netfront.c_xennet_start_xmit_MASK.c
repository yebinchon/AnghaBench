#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct xen_netif_tx_request {int flags; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ features; scalar_t__ pad; int /*<<< orphan*/  type; scalar_t__ size; } ;
struct TYPE_8__ {TYPE_1__ gso; } ;
struct xen_netif_extra_info {scalar_t__ flags; int /*<<< orphan*/  type; TYPE_2__ u; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct netfront_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; scalar_t__ bytes; } ;
struct TYPE_11__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct netfront_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  id; int /*<<< orphan*/  tx_irq; TYPE_5__ tx; } ;
struct netfront_info {struct netfront_queue* queues; int /*<<< orphan*/  tx_stats; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {unsigned int real_num_tx_queues; TYPE_3__ stats; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_10__ {int gso_type; unsigned int nr_frags; int /*<<< orphan*/ * frags; scalar_t__ gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 unsigned int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_XEN_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  XEN_NETIF_EXTRA_TYPE_GSO ; 
 int /*<<< orphan*/  XEN_NETIF_GSO_TYPE_TCPV4 ; 
 int /*<<< orphan*/  XEN_NETIF_GSO_TYPE_TCPV6 ; 
 scalar_t__ XEN_NETIF_MAX_TX_SIZE ; 
 int XEN_NETTXF_csum_blank ; 
 int XEN_NETTXF_data_validated ; 
 int XEN_NETTXF_extra_info ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct netfront_info* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct netfront_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ *) ; 
 struct page* FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ *) ; 
 size_t FUNC19 (struct sk_buff*) ; 
 unsigned int FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 TYPE_4__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 struct netfront_stats* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int) ; 
 struct page* FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct net_device*) ; 
 int FUNC31 (struct sk_buff*) ; 
 struct xen_netif_tx_request* FUNC32 (struct netfront_queue*,struct sk_buff*,struct page*,unsigned int,unsigned int) ; 
 struct xen_netif_tx_request* FUNC33 (struct netfront_queue*,struct xen_netif_tx_request*,struct sk_buff*,struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (struct netfront_queue*) ; 

__attribute__((used)) static netdev_tx_t FUNC35(struct sk_buff *skb, struct net_device *dev)
{
	struct netfront_info *np = FUNC7(dev);
	struct netfront_stats *tx_stats = FUNC25(np->tx_stats);
	struct xen_netif_tx_request *tx, *first_tx;
	unsigned int i;
	int notify;
	int slots;
	struct page *page;
	unsigned int offset;
	unsigned int len;
	unsigned long flags;
	struct netfront_queue *queue = NULL;
	unsigned int num_queues = dev->real_num_tx_queues;
	u16 queue_index;
	struct sk_buff *nskb;

	/* Drop the packet if no queues are set up */
	if (num_queues < 1)
		goto drop;
	/* Determine which queue to transmit this SKB on */
	queue_index = FUNC19(skb);
	queue = &np->queues[queue_index];

	/* If skb->len is too big for wire format, drop skb and alert
	 * user about misconfiguration.
	 */
	if (FUNC28(skb->len > XEN_NETIF_MAX_TX_SIZE)) {
		FUNC4(
			"xennet: skb->len = %u, too big for wire format\n",
			skb->len);
		goto drop;
	}

	slots = FUNC31(skb);
	if (FUNC28(slots > MAX_XEN_SKB_FRAGS + 1)) {
		FUNC5("xennet: skb rides the rocket: %d slots, %d bytes\n",
				    slots, skb->len);
		if (FUNC21(skb))
			goto drop;
	}

	page = FUNC29(skb->data);
	offset = FUNC14(skb->data);

	/* The first req should be at least ETH_HLEN size or the packet will be
	 * dropped by netback.
	 */
	if (FUNC28(PAGE_SIZE - offset < ETH_HLEN)) {
		nskb = FUNC15(skb, GFP_ATOMIC);
		if (!nskb)
			goto drop;
		FUNC2(skb);
		skb = nskb;
		page = FUNC29(skb->data);
		offset = FUNC14(skb->data);
	}

	len = FUNC20(skb);

	FUNC23(&queue->tx_lock, flags);

	if (FUNC28(!FUNC9(dev) ||
		     (slots > 1 && !FUNC30(dev)) ||
		     FUNC10(skb, FUNC11(skb)))) {
		FUNC24(&queue->tx_lock, flags);
		goto drop;
	}

	/* First request for the linear area. */
	first_tx = tx = FUNC32(queue, skb,
						page, offset, len);
	offset += tx->size;
	if (offset == PAGE_SIZE) {
		page++;
		offset = 0;
	}
	len -= tx->size;

	if (skb->ip_summed == CHECKSUM_PARTIAL)
		/* local packet? */
		tx->flags |= XEN_NETTXF_csum_blank | XEN_NETTXF_data_validated;
	else if (skb->ip_summed == CHECKSUM_UNNECESSARY)
		/* remote but checksummed. */
		tx->flags |= XEN_NETTXF_data_validated;

	/* Optional extra info after the first request. */
	if (FUNC22(skb)->gso_size) {
		struct xen_netif_extra_info *gso;

		gso = (struct xen_netif_extra_info *)
			FUNC0(&queue->tx, queue->tx.req_prod_pvt++);

		tx->flags |= XEN_NETTXF_extra_info;

		gso->u.gso.size = FUNC22(skb)->gso_size;
		gso->u.gso.type = (FUNC22(skb)->gso_type & SKB_GSO_TCPV6) ?
			XEN_NETIF_GSO_TYPE_TCPV6 :
			XEN_NETIF_GSO_TYPE_TCPV4;
		gso->u.gso.pad = 0;
		gso->u.gso.features = 0;

		gso->type = XEN_NETIF_EXTRA_TYPE_GSO;
		gso->flags = 0;
	}

	/* Requests for the rest of the linear area. */
	tx = FUNC33(queue, tx, skb, page, offset, len);

	/* Requests for all the frags. */
	for (i = 0; i < FUNC22(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC22(skb)->frags[i];
		tx = FUNC33(queue, tx, skb, FUNC17(frag),
					FUNC16(frag),
					FUNC18(frag));
	}

	/* First request has the packet length. */
	first_tx->size = skb->len;

	FUNC1(&queue->tx, notify);
	if (notify)
		FUNC13(queue->tx_irq);

	FUNC26(&tx_stats->syncp);
	tx_stats->bytes += skb->len;
	tx_stats->packets++;
	FUNC27(&tx_stats->syncp);

	/* Note: It is not safe to access skb after xennet_tx_buf_gc()! */
	FUNC34(queue);

	if (!FUNC8(queue))
		FUNC12(FUNC6(dev, queue->id));

	FUNC24(&queue->tx_lock, flags);

	return NETDEV_TX_OK;

 drop:
	dev->stats.tx_dropped++;
	FUNC3(skb);
	return NETDEV_TX_OK;
}