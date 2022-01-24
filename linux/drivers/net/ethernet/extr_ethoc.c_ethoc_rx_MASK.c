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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct ethoc_bd {int stat; } ;
struct ethoc {unsigned int num_tx; unsigned int cur_rx; scalar_t__ num_rx; void** vma; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_RX ; 
 int RX_BD_EMPTY ; 
 int RX_BD_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 scalar_t__ FUNC4 (struct ethoc*,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC8 () ; 
 struct sk_buff* FUNC9 (struct net_device*,int) ; 
 struct ethoc* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, int limit)
{
	struct ethoc *priv = FUNC10(dev);
	int count;

	for (count = 0; count < limit; ++count) {
		unsigned int entry;
		struct ethoc_bd bd;

		entry = priv->num_tx + priv->cur_rx;
		FUNC3(priv, entry, &bd);
		if (bd.stat & RX_BD_EMPTY) {
			FUNC2(priv, INT_MASK_RX);
			/* If packet (interrupt) came in between checking
			 * BD_EMTPY and clearing the interrupt source, then we
			 * risk missing the packet as the RX interrupt won't
			 * trigger right away when we reenable it; hence, check
			 * BD_EMTPY here again to make sure there isn't such a
			 * packet waiting for us...
			 */
			FUNC3(priv, entry, &bd);
			if (bd.stat & RX_BD_EMPTY)
				break;
		}

		if (FUNC4(priv, &bd) == 0) {
			int size = bd.stat >> 16;
			struct sk_buff *skb;

			size -= 4; /* strip the CRC */
			skb = FUNC9(dev, size);

			if (FUNC6(skb)) {
				void *src = priv->vma[entry];
				FUNC7(FUNC12(skb, size), src, size);
				skb->protocol = FUNC1(skb, dev);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += size;
				FUNC11(skb);
			} else {
				if (FUNC8())
					FUNC0(&dev->dev,
					    "low on memory - packet dropped\n");

				dev->stats.rx_dropped++;
				break;
			}
		}

		/* clear the buffer descriptor so it can be reused */
		bd.stat &= ~RX_BD_STATS;
		bd.stat |=  RX_BD_EMPTY;
		FUNC5(priv, entry, &bd);
		if (++priv->cur_rx == priv->num_rx)
			priv->cur_rx = 0;
	}

	return count;
}