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
struct sk_buff {unsigned int tail; unsigned int len; scalar_t__ pkt_type; int /*<<< orphan*/  protocol; } ;
struct TYPE_4__ {unsigned int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  packets; } ;
struct rtl8169_private {unsigned int cur_rx; TYPE_2__ rx_stats; int /*<<< orphan*/  napi; struct RxDesc* RxDescArray; int /*<<< orphan*/ * Rx_databuff; } ;
struct TYPE_3__ {int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct RxDesc {scalar_t__ opts2; int /*<<< orphan*/  addr; int /*<<< orphan*/  opts1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int DescOwn ; 
 scalar_t__ ETH_FCS_LEN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NETIF_F_RXALL ; 
 int NETIF_F_RXFCS ; 
 unsigned int NUM_RX_DESC ; 
 scalar_t__ PACKET_MULTICAST ; 
 int RxCRC ; 
 int RxRES ; 
 int RxRUNT ; 
 int RxRWT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 unsigned int FUNC8 (int,unsigned int) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void const*) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct RxDesc*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct RxDesc*,struct sk_buff*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct net_device *dev, struct rtl8169_private *tp, u32 budget)
{
	unsigned int cur_rx, rx_left;
	unsigned int count;

	cur_rx = tp->cur_rx;

	for (rx_left = FUNC8(budget, NUM_RX_DESC); rx_left > 0; rx_left--, cur_rx++) {
		unsigned int entry = cur_rx % NUM_RX_DESC;
		const void *rx_buf = FUNC12(tp->Rx_databuff[entry]);
		struct RxDesc *desc = tp->RxDescArray + entry;
		u32 status;

		status = FUNC5(desc->opts1);
		if (status & DescOwn)
			break;

		/* This barrier is needed to keep us from reading
		 * any other fields out of the Rx descriptor until
		 * we know the status of DescOwn
		 */
		FUNC1();

		if (FUNC22(status & RxRES)) {
			FUNC11(tp, rx_err, dev, "Rx ERROR. status = %08x\n",
				   status);
			dev->stats.rx_errors++;
			if (status & (RxRWT | RxRUNT))
				dev->stats.rx_length_errors++;
			if (status & RxCRC)
				dev->stats.rx_crc_errors++;
			if (status & (RxRUNT | RxCRC) && !(status & RxRWT) &&
			    dev->features & NETIF_F_RXALL) {
				goto process_pkt;
			}
		} else {
			unsigned int pkt_size;
			struct sk_buff *skb;

process_pkt:
			pkt_size = status & FUNC0(13, 0);
			if (FUNC7(!(dev->features & NETIF_F_RXFCS)))
				pkt_size -= ETH_FCS_LEN;
			/*
			 * The driver does not support incoming fragmented
			 * frames. They are seen as a symptom of over-mtu
			 * sized frames.
			 */
			if (FUNC22(FUNC14(status))) {
				dev->stats.rx_dropped++;
				dev->stats.rx_length_errors++;
				goto release_descriptor;
			}

			skb = FUNC9(&tp->napi, pkt_size);
			if (FUNC22(!skb)) {
				dev->stats.rx_dropped++;
				goto release_descriptor;
			}

			FUNC2(FUNC19(tp),
						FUNC6(desc->addr),
						pkt_size, DMA_FROM_DEVICE);
			FUNC13(rx_buf);
			FUNC18(skb, rx_buf, pkt_size);
			skb->tail += pkt_size;
			skb->len = pkt_size;

			FUNC3(FUNC19(tp),
						   FUNC6(desc->addr),
						   pkt_size, DMA_FROM_DEVICE);

			FUNC16(skb, status);
			skb->protocol = FUNC4(skb, dev);

			FUNC17(desc, skb);

			if (skb->pkt_type == PACKET_MULTICAST)
				dev->stats.multicast++;

			FUNC10(&tp->napi, skb);

			FUNC20(&tp->rx_stats.syncp);
			tp->rx_stats.packets++;
			tp->rx_stats.bytes += pkt_size;
			FUNC21(&tp->rx_stats.syncp);
		}
release_descriptor:
		desc->opts2 = 0;
		FUNC15(desc);
	}

	count = cur_rx - tp->cur_rx;
	tp->cur_rx = cur_rx;

	return count;
}