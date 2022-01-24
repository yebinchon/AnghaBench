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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct rxbd8 {int /*<<< orphan*/  lstatus; } ;
struct net_device {int dummy; } ;
struct gfar_private {int tx_actual_en; } ;
struct TYPE_4__ {unsigned int rx_packets; unsigned int rx_bytes; int /*<<< orphan*/  rx_dropped; } ;
struct gfar_priv_rx_q {int next_to_clean; int rx_ring_size; int /*<<< orphan*/  rfbptr; TYPE_2__ stats; struct sk_buff* skb; TYPE_1__* grp; int /*<<< orphan*/  qindex; struct rxbd8* rx_bd_base; struct net_device* ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi_rx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GFAR_RX_BUFF_ALLOC ; 
 int /*<<< orphan*/  RXBD_EMPTY ; 
 int /*<<< orphan*/  RXBD_ERR ; 
 int /*<<< orphan*/  RXBD_LAST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfar_priv_rx_q*,int) ; 
 struct sk_buff* FUNC6 (struct gfar_priv_rx_q*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*) ; 
 int FUNC8 (struct gfar_priv_rx_q*) ; 
 int FUNC9 (struct gfar_priv_rx_q*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct gfar_private* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct gfar_priv_rx_q *rx_queue,
			      int rx_work_limit)
{
	struct net_device *ndev = rx_queue->ndev;
	struct gfar_private *priv = FUNC12(ndev);
	struct rxbd8 *bdp;
	int i, howmany = 0;
	struct sk_buff *skb = rx_queue->skb;
	int cleaned_cnt = FUNC9(rx_queue);
	unsigned int total_bytes = 0, total_pkts = 0;

	/* Get the first full descriptor */
	i = rx_queue->next_to_clean;

	while (rx_work_limit--) {
		u32 lstatus;

		if (cleaned_cnt >= GFAR_RX_BUFF_ALLOC) {
			FUNC5(rx_queue, cleaned_cnt);
			cleaned_cnt = 0;
		}

		bdp = &rx_queue->rx_bd_base[i];
		lstatus = FUNC1(bdp->lstatus);
		if (lstatus & FUNC0(RXBD_EMPTY))
			break;

		/* order rx buffer descriptor reads */
		FUNC13();

		/* fetch next to clean buffer from the ring */
		skb = FUNC6(rx_queue, lstatus, skb);
		if (FUNC15(!skb))
			break;

		cleaned_cnt++;
		howmany++;

		if (FUNC15(++i == rx_queue->rx_ring_size))
			i = 0;

		rx_queue->next_to_clean = i;

		/* fetch next buffer if not the last in frame */
		if (!(lstatus & FUNC0(RXBD_LAST)))
			continue;

		if (FUNC15(lstatus & FUNC0(RXBD_ERR))) {
			FUNC2(lstatus, ndev);

			/* discard faulty buffer */
			FUNC3(skb);
			skb = NULL;
			rx_queue->stats.rx_dropped++;
			continue;
		}

		FUNC7(ndev, skb);

		/* Increment the number of packets */
		total_pkts++;
		total_bytes += skb->len;

		FUNC14(skb, rx_queue->qindex);

		skb->protocol = FUNC4(skb, ndev);

		/* Send the packet up the stack */
		FUNC11(&rx_queue->grp->napi_rx, skb);

		skb = NULL;
	}

	/* Store incomplete frames for completion */
	rx_queue->skb = skb;

	rx_queue->stats.rx_packets += total_pkts;
	rx_queue->stats.rx_bytes += total_bytes;

	if (cleaned_cnt)
		FUNC5(rx_queue, cleaned_cnt);

	/* Update Last Free RxBD pointer for LFC */
	if (FUNC15(priv->tx_actual_en)) {
		u32 bdp_dma = FUNC8(rx_queue);

		FUNC10(rx_queue->rfbptr, bdp_dma);
	}

	return howmany;
}