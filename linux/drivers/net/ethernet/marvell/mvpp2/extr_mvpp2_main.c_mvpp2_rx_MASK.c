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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_3__ dev; TYPE_2__ stats; } ;
struct napi_struct {int dummy; } ;
struct mvpp2_rx_queue {int /*<<< orphan*/  id; } ;
struct mvpp2_rx_desc {int dummy; } ;
struct mvpp2_port {int /*<<< orphan*/  stats; struct net_device* dev; TYPE_1__* priv; } ;
struct mvpp2_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct mvpp2_bm_pool {unsigned int frag_size; int /*<<< orphan*/  buf_size; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {struct mvpp2_bm_pool* bm_pools; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ MVPP2_MH_SIZE ; 
 int MVPP2_RXD_BM_POOL_ID_MASK ; 
 int MVPP2_RXD_BM_POOL_ID_OFFS ; 
 int MVPP2_RXD_ERR_SUMMARY ; 
 scalar_t__ NET_SKB_PAD ; 
 unsigned int PAGE_SIZE ; 
 struct sk_buff* FUNC0 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int FUNC6 (struct mvpp2_port*,struct mvpp2_bm_pool*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int FUNC9 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int FUNC10 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 struct mvpp2_rx_desc* FUNC11 (struct mvpp2_rx_queue*) ; 
 int FUNC12 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mvpp2_port*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,scalar_t__) ; 
 struct mvpp2_pcpu_stats* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int FUNC24(struct mvpp2_port *port, struct napi_struct *napi,
		    int rx_todo, struct mvpp2_rx_queue *rxq)
{
	struct net_device *dev = port->dev;
	int rx_received;
	int rx_done = 0;
	u32 rcvd_pkts = 0;
	u32 rcvd_bytes = 0;

	/* Get number of received packets and clamp the to-do */
	rx_received = FUNC12(port, rxq->id);
	if (rx_todo > rx_received)
		rx_todo = rx_received;

	while (rx_done < rx_todo) {
		struct mvpp2_rx_desc *rx_desc = FUNC11(rxq);
		struct mvpp2_bm_pool *bm_pool;
		struct sk_buff *skb;
		unsigned int frag_size;
		dma_addr_t dma_addr;
		phys_addr_t phys_addr;
		u32 rx_status;
		int pool, rx_bytes, err;
		void *data;

		rx_done++;
		rx_status = FUNC10(port, rx_desc);
		rx_bytes = FUNC9(port, rx_desc);
		rx_bytes -= MVPP2_MH_SIZE;
		dma_addr = FUNC8(port, rx_desc);
		phys_addr = FUNC7(port, rx_desc);
		data = (void *)FUNC17(phys_addr);

		pool = (rx_status & MVPP2_RXD_BM_POOL_ID_MASK) >>
			MVPP2_RXD_BM_POOL_ID_OFFS;
		bm_pool = &port->priv->bm_pools[pool];

		/* In case of an error, release the requested buffer pointer
		 * to the Buffer Manager. This request process is controlled
		 * by the hardware, and the information about the buffer is
		 * comprised by the RX descriptor.
		 */
		if (rx_status & MVPP2_RXD_ERR_SUMMARY) {
err_drop_frame:
			dev->stats.rx_errors++;
			FUNC5(port, rx_desc);
			/* Return the buffer to the pool */
			FUNC3(port, pool, dma_addr, phys_addr);
			continue;
		}

		if (bm_pool->frag_size > PAGE_SIZE)
			frag_size = 0;
		else
			frag_size = bm_pool->frag_size;

		skb = FUNC0(data, frag_size);
		if (!skb) {
			FUNC16(port->dev, "skb build failed\n");
			goto err_drop_frame;
		}

		err = FUNC6(port, bm_pool, pool);
		if (err) {
			FUNC15(port->dev, "failed to refill BM pools\n");
			goto err_drop_frame;
		}

		FUNC1(dev->dev.parent, dma_addr,
				 bm_pool->buf_size, DMA_FROM_DEVICE);

		rcvd_pkts++;
		rcvd_bytes += rx_bytes;

		FUNC19(skb, MVPP2_MH_SIZE + NET_SKB_PAD);
		FUNC18(skb, rx_bytes);
		skb->protocol = FUNC2(skb, dev);
		FUNC4(port, rx_status, skb);

		FUNC14(napi, skb);
	}

	if (rcvd_pkts) {
		struct mvpp2_pcpu_stats *stats = FUNC20(port->stats);

		FUNC21(&stats->syncp);
		stats->rx_packets += rcvd_pkts;
		stats->rx_bytes   += rcvd_bytes;
		FUNC22(&stats->syncp);
	}

	/* Update Rx queue management counters */
	FUNC23();
	FUNC13(port, rxq->id, rx_done, rx_done);

	return rx_todo;
}