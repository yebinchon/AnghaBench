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
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {unsigned long base_addr; TYPE_1__ stats; } ;
struct ei_device {int stop_page; int rx_start_page; unsigned char current_page; } ;
struct e8390_pkt_hdr {int count; int status; unsigned char next; } ;
typedef  int /*<<< orphan*/  rx_frame ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 unsigned char E8390_NODMA ; 
 unsigned char E8390_PAGE0 ; 
 unsigned char E8390_PAGE1 ; 
 scalar_t__ EN0_BOUNDARY ; 
 scalar_t__ EN0_ISR ; 
 scalar_t__ EN1_CURPAG ; 
 unsigned char ENISR_RX ; 
 unsigned char ENISR_RX_ERR ; 
 int ENRSR_FO ; 
 int ENRSR_PHY ; 
 int ENRSR_RXOK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,struct sk_buff*,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct e8390_pkt_hdr*,unsigned char) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,unsigned char) ; 
 struct ei_device* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int,...) ; 
 scalar_t__ FUNC12 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC17(struct net_device *dev)
{
	unsigned long e8390_base = dev->base_addr;
	struct ei_device *ei_local = FUNC9(dev);
	unsigned char rxing_page, this_frame, next_frame;
	unsigned short current_offset;
	int rx_pkt_count = 0;
	struct e8390_pkt_hdr rx_frame;
	int num_rx_pages = ei_local->stop_page-ei_local->rx_start_page;

	while (++rx_pkt_count < 10) {
		int pkt_len, pkt_stat;

		/* Get the rx page (incoming packet pointer). */
		FUNC4(E8390_NODMA+E8390_PAGE1, e8390_base + E8390_CMD);
		rxing_page = FUNC2(e8390_base + EN1_CURPAG);
		FUNC4(E8390_NODMA+E8390_PAGE0, e8390_base + E8390_CMD);

		/* Remove one frame from the ring.  Boundary is always a page behind. */
		this_frame = FUNC2(e8390_base + EN0_BOUNDARY) + 1;
		if (this_frame >= ei_local->stop_page)
			this_frame = ei_local->rx_start_page;

		/* Someday we'll omit the previous, iff we never get this message.
		   (There is at least one clone claimed to have a problem.)

		   Keep quiet if it looks like a card removal. One problem here
		   is that some clones crash in roughly the same way.
		 */
		if ((FUNC12(ei_local)) &&
		    this_frame != ei_local->current_page &&
		    (this_frame != 0x0 || rxing_page != 0xFF))
			FUNC7(dev,
				   "mismatched read page pointers %2x vs %2x\n",
				   this_frame, ei_local->current_page);

		if (this_frame == rxing_page)	/* Read all the frames? */
			break;				/* Done for now */

		current_offset = this_frame << 8;
		FUNC1(dev, &rx_frame, this_frame);

		pkt_len = rx_frame.count - sizeof(struct e8390_pkt_hdr);
		pkt_stat = rx_frame.status;

		next_frame = this_frame + 1 + ((pkt_len+4)>>8);

		/* Check for bogosity warned by 3c503 book: the status byte is never
		   written.  This happened a lot during testing! This code should be
		   cleaned up someday. */
		if (rx_frame.next != next_frame &&
		    rx_frame.next != next_frame + 1 &&
		    rx_frame.next != next_frame - num_rx_pages &&
		    rx_frame.next != next_frame + 1 - num_rx_pages) {
			ei_local->current_page = rxing_page;
			FUNC3(ei_local->current_page-1, e8390_base+EN0_BOUNDARY);
			dev->stats.rx_errors++;
			continue;
		}

		if (pkt_len < 60  ||  pkt_len > 1518) {
			FUNC10(ei_local, rx_status, dev,
				  "bogus packet size: %d, status=%#2x nxpg=%#2x\n",
				  rx_frame.count, rx_frame.status,
				  rx_frame.next);
			dev->stats.rx_errors++;
			dev->stats.rx_length_errors++;
		} else if ((pkt_stat & 0x0F) == ENRSR_RXOK) {
			struct sk_buff *skb;

			skb = FUNC6(dev, pkt_len + 2);
			if (skb == NULL) {
				FUNC11(ei_local, rx_err, dev,
					  "Couldn't allocate a sk_buff of size %d\n",
					  pkt_len);
				dev->stats.rx_dropped++;
				break;
			} else {
				FUNC16(skb, 2);	/* IP headers on 16 byte boundaries */
				FUNC15(skb, pkt_len);	/* Make room */
				FUNC0(dev, pkt_len, skb, current_offset + sizeof(rx_frame));
				skb->protocol = FUNC5(skb, dev);
				if (!FUNC14(skb))
					FUNC13(skb);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += pkt_len;
				if (pkt_stat & ENRSR_PHY)
					dev->stats.multicast++;
			}
		} else {
			FUNC11(ei_local, rx_err, dev,
				  "bogus packet: status=%#2x nxpg=%#2x size=%d\n",
				  rx_frame.status, rx_frame.next,
				  rx_frame.count);
			dev->stats.rx_errors++;
			/* NB: The NIC counts CRC, frame and missed errors. */
			if (pkt_stat & ENRSR_FO)
				dev->stats.rx_fifo_errors++;
		}
		next_frame = rx_frame.next;

		/* This _should_ never happen: it's here for avoiding bad clones. */
		if (next_frame >= ei_local->stop_page) {
			FUNC8(dev, "next frame inconsistency, %#2x\n",
				      next_frame);
			next_frame = ei_local->rx_start_page;
		}
		ei_local->current_page = next_frame;
		FUNC4(next_frame-1, e8390_base+EN0_BOUNDARY);
	}

	/* We used to also ack ENISR_OVER here, but that would sometimes mask
	   a real overrun, leaving the 8390 in a stopped state with rec'vr off. */
	FUNC4(ENISR_RX+ENISR_RX_ERR, e8390_base+EN0_ISR);
}