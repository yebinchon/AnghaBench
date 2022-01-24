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
struct TYPE_2__ {short rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int base_addr; int /*<<< orphan*/  name; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 scalar_t__ RX_FIFO ; 
 scalar_t__ RX_STATUS ; 
 int /*<<< orphan*/  RxDiscard ; 
 int el3_debug ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,short) ; 
 int FUNC2 (scalar_t__) ; 
 struct sk_buff* FUNC3 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC9(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	short rx_status;

	if (el3_debug > 5)
		FUNC6("   In rx_packet(), status %4.4x, rx_status %4.4x.\n",
			   FUNC2(ioaddr+EL3_STATUS), FUNC2(ioaddr+RX_STATUS));
	while ((rx_status = FUNC2(ioaddr + RX_STATUS)) > 0) {
		if (rx_status & 0x4000) { /* Error, update stats. */
			short error = rx_status & 0x3800;

			FUNC5(RxDiscard, ioaddr + EL3_CMD);
			dev->stats.rx_errors++;
			switch (error) {
			case 0x0000:		dev->stats.rx_over_errors++; break;
			case 0x0800:		dev->stats.rx_length_errors++; break;
			case 0x1000:		dev->stats.rx_frame_errors++; break;
			case 0x1800:		dev->stats.rx_length_errors++; break;
			case 0x2000:		dev->stats.rx_frame_errors++; break;
			case 0x2800:		dev->stats.rx_crc_errors++; break;
			}
		} else {
			short pkt_len = rx_status & 0x7ff;
			struct sk_buff *skb;

			skb = FUNC3(dev, pkt_len + 5);
			if (el3_debug > 4)
				FUNC6("Receiving packet size %d status %4.4x.\n",
					   pkt_len, rx_status);
			if (skb != NULL) {
				FUNC8(skb, 2);     /* Align IP on 16 byte */

				/* 'skb->data' points to the start of sk_buff data area. */
				FUNC1(ioaddr + RX_FIFO, FUNC7(skb,pkt_len),
					 (pkt_len + 3) >> 2);

				FUNC5(RxDiscard, ioaddr + EL3_CMD); /* Pop top Rx packet. */
				skb->protocol = FUNC0(skb,dev);
				FUNC4(skb);
				dev->stats.rx_bytes += pkt_len;
				dev->stats.rx_packets++;
				continue;
			}
			FUNC5(RxDiscard, ioaddr + EL3_CMD);
			dev->stats.rx_dropped++;
			if (el3_debug)
				FUNC6("%s: Couldn't allocate a sk_buff of size %d.\n",
					   dev->name, pkt_len);
		}
		FUNC2(ioaddr + EL3_STATUS); 				/* Delay. */
		while (FUNC2(ioaddr + EL3_STATUS) & 0x1000)
			FUNC6("	Waiting for 3c509 to discard packet, status %x.\n",
				   FUNC2(ioaddr + EL3_STATUS) );
	}

	return 0;
}