#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct greth_private {int tx_free; size_t tx_last; int /*<<< orphan*/  dev; int /*<<< orphan*/ * tx_bufs; int /*<<< orphan*/ * rx_bufs; struct greth_bd* tx_bd_base; struct sk_buff** tx_skbuff; struct sk_buff** rx_skbuff; scalar_t__ gbit_mac; struct greth_bd* rx_bd_base; } ;
struct greth_bd {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int GRETH_RXBD_NUM ; 
 int GRETH_TXBD_NUM ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 scalar_t__ NET_IP_ALIGN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_1__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct greth_private *greth)
{
	int i;
	struct greth_bd *rx_bdp = greth->rx_bd_base;
	struct greth_bd *tx_bdp = greth->tx_bd_base;

	if (greth->gbit_mac) {

		/* Free and unmap RX buffers */
		for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
			if (greth->rx_skbuff[i] != NULL) {
				FUNC1(greth->rx_skbuff[i]);
				FUNC3(greth->dev,
						 FUNC4(&rx_bdp->addr),
						 MAX_FRAME_SIZE+NET_IP_ALIGN,
						 DMA_FROM_DEVICE);
			}
		}

		/* TX buffers */
		while (greth->tx_free < GRETH_TXBD_NUM) {

			struct sk_buff *skb = greth->tx_skbuff[greth->tx_last];
			int nr_frags = FUNC8(skb)->nr_frags;
			tx_bdp = greth->tx_bd_base + greth->tx_last;
			greth->tx_last = FUNC0(greth->tx_last);

			FUNC3(greth->dev,
					 FUNC4(&tx_bdp->addr),
					 FUNC7(skb),
					 DMA_TO_DEVICE);

			for (i = 0; i < nr_frags; i++) {
				skb_frag_t *frag = &FUNC8(skb)->frags[i];
				tx_bdp = greth->tx_bd_base + greth->tx_last;

				FUNC2(greth->dev,
					       FUNC4(&tx_bdp->addr),
					       FUNC6(frag),
					       DMA_TO_DEVICE);

				greth->tx_last = FUNC0(greth->tx_last);
			}
			greth->tx_free += nr_frags+1;
			FUNC1(skb);
		}


	} else { /* 10/100 Mbps MAC */

		for (i = 0; i < GRETH_RXBD_NUM; i++, rx_bdp++) {
			FUNC5(greth->rx_bufs[i]);
			FUNC3(greth->dev,
					 FUNC4(&rx_bdp->addr),
					 MAX_FRAME_SIZE,
					 DMA_FROM_DEVICE);
		}
		for (i = 0; i < GRETH_TXBD_NUM; i++, tx_bdp++) {
			FUNC5(greth->tx_bufs[i]);
			FUNC3(greth->dev,
					 FUNC4(&tx_bdp->addr),
					 MAX_FRAME_SIZE,
					 DMA_TO_DEVICE);
		}
	}
}