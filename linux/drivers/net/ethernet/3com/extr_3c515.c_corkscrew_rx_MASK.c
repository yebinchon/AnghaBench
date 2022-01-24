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
struct TYPE_2__ {short rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int base_addr; short name; TYPE_1__ stats; } ;

/* Variables and functions */
 short CmdInProgress ; 
 scalar_t__ EL3_CMD ; 
 scalar_t__ EL3_STATUS ; 
 scalar_t__ RX_FIFO ; 
 int /*<<< orphan*/  RxDiscard ; 
 scalar_t__ RxErrors ; 
 scalar_t__ RxStatus ; 
 int corkscrew_debug ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,short) ; 
 short FUNC3 (scalar_t__) ; 
 struct sk_buff* FUNC4 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,short,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	int i;
	short rx_status;

	if (corkscrew_debug > 5)
		FUNC7("   In rx_packet(), status %4.4x, rx_status %4.4x.\n",
		     FUNC3(ioaddr + EL3_STATUS), FUNC3(ioaddr + RxStatus));
	while ((rx_status = FUNC3(ioaddr + RxStatus)) > 0) {
		if (rx_status & 0x4000) {	/* Error, update stats. */
			unsigned char rx_error = FUNC1(ioaddr + RxErrors);
			if (corkscrew_debug > 2)
				FUNC7(" Rx error: status %2.2x.\n",
				       rx_error);
			dev->stats.rx_errors++;
			if (rx_error & 0x01)
				dev->stats.rx_over_errors++;
			if (rx_error & 0x02)
				dev->stats.rx_length_errors++;
			if (rx_error & 0x04)
				dev->stats.rx_frame_errors++;
			if (rx_error & 0x08)
				dev->stats.rx_crc_errors++;
			if (rx_error & 0x10)
				dev->stats.rx_length_errors++;
		} else {
			/* The packet length: up to 4.5K!. */
			short pkt_len = rx_status & 0x1fff;
			struct sk_buff *skb;

			skb = FUNC4(dev, pkt_len + 5 + 2);
			if (corkscrew_debug > 4)
				FUNC7("Receiving packet size %d status %4.4x.\n",
				     pkt_len, rx_status);
			if (skb != NULL) {
				FUNC9(skb, 2);	/* Align IP on 16 byte boundaries */
				/* 'skb_put()' points to the start of sk_buff data area. */
				FUNC2(ioaddr + RX_FIFO,
				     FUNC8(skb, pkt_len),
				     (pkt_len + 3) >> 2);
				FUNC6(RxDiscard, ioaddr + EL3_CMD);	/* Pop top Rx packet. */
				skb->protocol = FUNC0(skb, dev);
				FUNC5(skb);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += pkt_len;
				/* Wait a limited time to go to next packet. */
				for (i = 200; i >= 0; i--)
					if (! (FUNC3(ioaddr + EL3_STATUS) & CmdInProgress))
						break;
				continue;
			} else if (corkscrew_debug)
				FUNC7("%s: Couldn't allocate a sk_buff of size %d.\n", dev->name, pkt_len);
		}
		FUNC6(RxDiscard, ioaddr + EL3_CMD);
		dev->stats.rx_dropped++;
		/* Wait a limited time to skip this packet. */
		for (i = 200; i >= 0; i--)
			if (!(FUNC3(ioaddr + EL3_STATUS) & CmdInProgress))
				break;
	}
	return 0;
}