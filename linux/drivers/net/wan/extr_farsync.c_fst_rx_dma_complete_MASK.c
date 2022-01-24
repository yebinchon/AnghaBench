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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_3__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; } ;
struct fst_port_info {int index; scalar_t__ mode; } ;
struct fst_card_info {int /*<<< orphan*/  rx_dma_handle_host; } ;
struct TYPE_4__ {int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_RX ; 
 int /*<<< orphan*/  DBG_TX ; 
 int /*<<< orphan*/  DMA_OWN ; 
 scalar_t__ FST_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int FUNC5 (struct sk_buff*) ; 
 struct net_device* FUNC6 (struct fst_port_info*) ; 
 TYPE_2__** rxDescrRing ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(struct fst_card_info *card, struct fst_port_info *port,
		    int len, struct sk_buff *skb, int rxp)
{
	struct net_device *dev = FUNC6(port);
	int pi;
	int rx_status;

	FUNC1(DBG_TX, "fst_rx_dma_complete\n");
	pi = port->index;
	FUNC7(skb, card->rx_dma_handle_host, len);

	/* Reset buffer descriptor */
	FUNC0(card, rxDescrRing[pi][rxp].bits, DMA_OWN);

	/* Update stats */
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	/* Push upstream */
	FUNC1(DBG_RX, "Pushing the frame up the stack\n");
	if (port->mode == FST_RAW)
		skb->protocol = FUNC2(skb, dev);
	else
		skb->protocol = FUNC4(skb, dev);
	rx_status = FUNC5(skb);
	FUNC3(rx_status, FUNC6(port)->name);
	if (rx_status == NET_RX_DROP)
		dev->stats.rx_dropped++;
}