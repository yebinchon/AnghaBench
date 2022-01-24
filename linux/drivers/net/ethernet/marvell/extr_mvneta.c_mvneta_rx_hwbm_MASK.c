#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {void* protocol; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct napi_struct {int dummy; } ;
struct mvneta_rx_queue {int /*<<< orphan*/  refill_err; } ;
struct mvneta_rx_desc {scalar_t__ status; int data_size; int /*<<< orphan*/  buf_phys_addr; scalar_t__ buf_cookie; } ;
struct mvneta_port {int /*<<< orphan*/  stats; TYPE_3__* bm_priv; struct net_device* dev; } ;
struct mvneta_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_8__ {scalar_t__ frag_size; } ;
struct mvneta_bm_pool {int /*<<< orphan*/  buf_size; TYPE_4__ hwbm_pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {TYPE_2__* pdev; struct mvneta_bm_pool* bm_pools; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETH_FCS_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MVNETA_MH_SIZE ; 
 scalar_t__ MVNETA_RXD_ERR_SUMMARY ; 
 size_t FUNC0 (struct mvneta_rx_desc*) ; 
 int NET_SKB_PAD ; 
 scalar_t__ PAGE_SIZE ; 
 struct sk_buff* FUNC1 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*,struct net_device*) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct mvneta_bm_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvneta_port*,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvneta_port*,struct mvneta_rx_desc*) ; 
 int FUNC9 (struct mvneta_port*,struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct mvneta_port*,struct mvneta_rx_queue*,int,int) ; 
 struct mvneta_rx_desc* FUNC12 (struct mvneta_rx_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct napi_struct*,struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*) ; 
 int rx_copybreak ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 struct mvneta_pcpu_stats* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct napi_struct *napi,
			  struct mvneta_port *pp, int rx_todo,
			  struct mvneta_rx_queue *rxq)
{
	struct net_device *dev = pp->dev;
	int rx_done;
	u32 rcvd_pkts = 0;
	u32 rcvd_bytes = 0;

	/* Get number of received packets */
	rx_done = FUNC9(pp, rxq);

	if (rx_todo > rx_done)
		rx_todo = rx_done;

	rx_done = 0;

	/* Fairness NAPI loop */
	while (rx_done < rx_todo) {
		struct mvneta_rx_desc *rx_desc = FUNC12(rxq);
		struct mvneta_bm_pool *bm_pool = NULL;
		struct sk_buff *skb;
		unsigned char *data;
		dma_addr_t phys_addr;
		u32 rx_status, frag_size;
		int rx_bytes, err;
		u8 pool_id;

		rx_done++;
		rx_status = rx_desc->status;
		rx_bytes = rx_desc->data_size - (ETH_FCS_LEN + MVNETA_MH_SIZE);
		data = (u8 *)(uintptr_t)rx_desc->buf_cookie;
		phys_addr = rx_desc->buf_phys_addr;
		pool_id = FUNC0(rx_desc);
		bm_pool = &pp->bm_priv->bm_pools[pool_id];

		if (!FUNC10(rx_status) ||
		    (rx_status & MVNETA_RXD_ERR_SUMMARY)) {
err_drop_frame_ret_pool:
			/* Return the buffer to the pool */
			FUNC6(pp->bm_priv, bm_pool,
					      rx_desc->buf_phys_addr);
err_drop_frame:
			dev->stats.rx_errors++;
			FUNC8(pp, rx_desc);
			/* leave the descriptor untouched */
			continue;
		}

		if (rx_bytes <= rx_copybreak) {
			/* better copy a small frame and not unmap the DMA region */
			skb = FUNC14(dev, rx_bytes);
			if (FUNC22(!skb))
				goto err_drop_frame_ret_pool;

			FUNC2(&pp->bm_priv->pdev->dev,
			                              rx_desc->buf_phys_addr,
			                              MVNETA_MH_SIZE + NET_SKB_PAD,
			                              rx_bytes,
			                              DMA_FROM_DEVICE);
			FUNC17(skb, data + MVNETA_MH_SIZE + NET_SKB_PAD,
				     rx_bytes);

			skb->protocol = FUNC4(skb, dev);
			FUNC7(pp, rx_status, skb);
			FUNC13(napi, skb);

			rcvd_pkts++;
			rcvd_bytes += rx_bytes;

			/* Return the buffer to the pool */
			FUNC6(pp->bm_priv, bm_pool,
					      rx_desc->buf_phys_addr);

			/* leave the descriptor and buffer untouched */
			continue;
		}

		/* Refill processing */
		err = FUNC5(&bm_pool->hwbm_pool, GFP_ATOMIC);
		if (err) {
			FUNC15(dev, "Linux processing - Can't refill\n");
			rxq->refill_err++;
			goto err_drop_frame_ret_pool;
		}

		frag_size = bm_pool->hwbm_pool.frag_size;

		skb = FUNC1(data, frag_size > PAGE_SIZE ? 0 : frag_size);

		/* After refill old buffer has to be unmapped regardless
		 * the skb is successfully built or not.
		 */
		FUNC3(&pp->bm_priv->pdev->dev, phys_addr,
				 bm_pool->buf_size, DMA_FROM_DEVICE);
		if (!skb)
			goto err_drop_frame;

		rcvd_pkts++;
		rcvd_bytes += rx_bytes;

		/* Linux processing */
		FUNC18(skb, MVNETA_MH_SIZE + NET_SKB_PAD);
		FUNC16(skb, rx_bytes);

		skb->protocol = FUNC4(skb, dev);

		FUNC7(pp, rx_status, skb);

		FUNC13(napi, skb);
	}

	if (rcvd_pkts) {
		struct mvneta_pcpu_stats *stats = FUNC19(pp->stats);

		FUNC20(&stats->syncp);
		stats->rx_packets += rcvd_pkts;
		stats->rx_bytes   += rcvd_bytes;
		FUNC21(&stats->syncp);
	}

	/* Update rxq management counters */
	FUNC11(pp, rxq, rx_done, rx_done);

	return rx_done;
}