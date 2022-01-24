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
struct net_device_stats {unsigned int rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_over_errors; } ;
struct net_device {struct net_device_stats stats; int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {unsigned int command; } ;
struct TYPE_4__ {unsigned int rx_head; TYPE_1__ regs; } ;

/* Variables and functions */
 unsigned int CMD_RXON ; 
 int /*<<< orphan*/  REG_COMMAND ; 
 int /*<<< orphan*/  REG_RECVEND ; 
 int /*<<< orphan*/  REG_RECVPTR ; 
 int /*<<< orphan*/  REG_STATUS ; 
 unsigned int RXHDR_CHAINCONTINUE ; 
 unsigned int RXHDR_RECEIVE ; 
 unsigned int RXSTAT_CRCERROR ; 
 unsigned int RXSTAT_DONE ; 
 unsigned int RXSTAT_DRIBBLEERROR ; 
 unsigned int RXSTAT_OVERSIZE ; 
 unsigned int RXSTAT_SHORTPACKET ; 
 unsigned int RX_END ; 
 unsigned int RX_START ; 
 int STAT_RXON ; 
 int /*<<< orphan*/  buffer_read ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,unsigned char*,unsigned int) ; 
 unsigned int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC7 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 unsigned int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_2__* FUNC11 (struct net_device*) ; 
 unsigned char* FUNC12 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, unsigned int maxcnt)
{
	unsigned int next_ptr = FUNC11(dev)->rx_head, received = 0;

	FUNC2(dev);

	do {
		unsigned int this_ptr, status;
		unsigned char addrs[16];

		/*
		 * read the first 16 bytes from the buffer.
		 * This contains the status bytes etc and ethernet addresses,
		 * and we also check the source ethernet address to see if
		 * it originated from us.
		 */
		{
			unsigned int temp_ptr;
			FUNC6(dev, buffer_read, next_ptr);
			temp_ptr = FUNC5(dev);
			status = FUNC5(dev);
			if ((status & (RXSTAT_DONE | RXHDR_CHAINCONTINUE | RXHDR_RECEIVE)) !=
				(RXSTAT_DONE | RXHDR_CHAINCONTINUE) || !temp_ptr)
				break;

			this_ptr = next_ptr + 4;
			next_ptr = FUNC9(temp_ptr);
		}
		FUNC6(dev, buffer_read, this_ptr);
		FUNC4(dev, addrs+2, 12);

if (next_ptr < RX_START || next_ptr >= RX_END) {
 int i;
 FUNC10("%s: bad next pointer @%04X: ", dev->name, FUNC11(dev)->rx_head);
 FUNC10("%02X %02X %02X %02X ", next_ptr >> 8, next_ptr & 255, status & 255, status >> 8);
 for (i = 2; i < 14; i++)
   FUNC10("%02X ", addrs[i]);
 FUNC10("\n");
 next_ptr = FUNC11(dev)->rx_head;
 break;
}
		/*
 		 * ignore our own packets...
	 	 */
		if (!(*(unsigned long *)&dev->dev_addr[0] ^ *(unsigned long *)&addrs[2+6]) &&
		    !(*(unsigned short *)&dev->dev_addr[4] ^ *(unsigned short *)&addrs[2+10])) {
			maxcnt ++; /* compensate for loopedback packet */
			FUNC3(next_ptr >> 8, REG_RECVEND);
		} else
		if (!(status & (RXSTAT_OVERSIZE|RXSTAT_CRCERROR|RXSTAT_DRIBBLEERROR|RXSTAT_SHORTPACKET))) {
			unsigned int length = next_ptr - this_ptr;
			struct sk_buff *skb;

			if (next_ptr <= this_ptr)
				length += RX_END - RX_START;

			skb = FUNC7(dev, length + 2);
			if (skb) {
				unsigned char *buf;

				FUNC13(skb, 2);
				buf = FUNC12(skb, length);
				FUNC4(dev, buf + 12, length - 12);
				FUNC3(next_ptr >> 8, REG_RECVEND);
				*(unsigned short *)(buf + 0)	= *(unsigned short *)(addrs + 2);
				*(unsigned long *)(buf + 2)	= *(unsigned long *)(addrs + 4);
				*(unsigned long *)(buf + 6)	= *(unsigned long *)(addrs + 8);
				*(unsigned short *)(buf + 10)	= *(unsigned short *)(addrs + 12);
				skb->protocol = FUNC0(skb, dev);
				FUNC8(skb);
				received ++;
			} else {
				FUNC3(next_ptr >> 8, REG_RECVEND);
				dev->stats.rx_dropped++;
				goto done;
			}
		} else {
			struct net_device_stats *stats = &dev->stats;
			FUNC3(next_ptr >> 8, REG_RECVEND);
			if (status & RXSTAT_OVERSIZE)	  stats->rx_over_errors ++;
			if (status & RXSTAT_CRCERROR)	  stats->rx_crc_errors ++;
			if (status & RXSTAT_DRIBBLEERROR) stats->rx_fifo_errors ++;
			if (status & RXSTAT_SHORTPACKET)  stats->rx_length_errors ++;
			stats->rx_errors++;
		}
	}
	while (-- maxcnt);

done:
	dev->stats.rx_packets += received;
	FUNC11(dev)->rx_head = next_ptr;
	/*
	 * If rx went off line, then that means that the buffer may be full.  We
	 * have dropped at least one packet.
	 */
	if (!(FUNC1(REG_STATUS) & STAT_RXON)) {
		dev->stats.rx_dropped++;
    		FUNC3(next_ptr, REG_RECVPTR);
		FUNC3(FUNC11(dev)->regs.command | CMD_RXON, REG_COMMAND);
	}

	return maxcnt;
}