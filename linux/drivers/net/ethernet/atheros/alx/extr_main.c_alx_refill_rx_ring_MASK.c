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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ data; } ;
struct alx_rx_queue {size_t write_idx; size_t read_idx; struct alx_buffer* bufs; struct alx_rfd* rfd; } ;
struct alx_rfd {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__* pdev; } ;
struct alx_priv {size_t rx_ringsz; TYPE_3__ hw; int /*<<< orphan*/  rxbuf_size; int /*<<< orphan*/  dev; TYPE_1__** qnapi; } ;
struct alx_buffer {struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct alx_rx_queue* rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_RFD_PIDX ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct alx_buffer*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct alx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct alx_priv *alx, gfp_t gfp)
{
	struct alx_rx_queue *rxq = alx->qnapi[0]->rxq;
	struct sk_buff *skb;
	struct alx_buffer *cur_buf;
	dma_addr_t dma;
	u16 cur, next, count = 0;

	next = cur = rxq->write_idx;
	if (++next == alx->rx_ringsz)
		next = 0;
	cur_buf = &rxq->bufs[cur];

	while (!cur_buf->skb && next != rxq->read_idx) {
		struct alx_rfd *rfd = &rxq->rfd[cur];

		/*
		 * When DMA RX address is set to something like
		 * 0x....fc0, it will be very likely to cause DMA
		 * RFD overflow issue.
		 *
		 * To work around it, we apply rx skb with 64 bytes
		 * longer space, and offset the address whenever
		 * 0x....fc0 is detected.
		 */
		skb = FUNC1(alx->dev, alx->rxbuf_size + 64, gfp);
		if (!skb)
			break;

		if (((unsigned long)skb->data & 0xfff) == 0xfc0)
			FUNC9(skb, 64);

		dma = FUNC5(&alx->hw.pdev->dev,
				     skb->data, alx->rxbuf_size,
				     DMA_FROM_DEVICE);
		if (FUNC6(&alx->hw.pdev->dev, dma)) {
			FUNC4(skb);
			break;
		}

		/* Unfortunately, RX descriptor buffers must be 4-byte
		 * aligned, so we can't use IP alignment.
		 */
		if (FUNC0(dma & 3)) {
			FUNC4(skb);
			break;
		}

		cur_buf->skb = skb;
		FUNC8(cur_buf, size, alx->rxbuf_size);
		FUNC7(cur_buf, dma, dma);
		rfd->addr = FUNC3(dma);

		cur = next;
		if (++next == alx->rx_ringsz)
			next = 0;
		cur_buf = &rxq->bufs[cur];
		count++;
	}

	if (count) {
		/* flush all updates before updating hardware */
		FUNC10();
		rxq->write_idx = cur;
		FUNC2(&alx->hw, ALX_RFD_PIDX, cur);
	}

	return count;
}