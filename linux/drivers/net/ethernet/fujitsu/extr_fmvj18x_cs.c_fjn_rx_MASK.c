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
typedef  int u_short ;
struct sk_buff {int /*<<< orphan*/ * data; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ DATAPORT ; 
 int F_ALG_ERR ; 
 int F_BUF_EMP ; 
 int F_CRC_ERR ; 
 int F_LEN_ERR ; 
 int F_OVR_FLO ; 
 int /*<<< orphan*/  F_SKP_PKT ; 
 scalar_t__ RX_MODE ; 
 scalar_t__ RX_SKIP ; 
 scalar_t__ RX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct sk_buff* FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    int boguscount = 10;	/* 5 -> 10: by agy 19940922 */

    FUNC9("%s: in rx_packet(), rx_status %02x.\n",
	  dev->name, FUNC1(ioaddr + RX_STATUS));

    while ((FUNC1(ioaddr + RX_MODE) & F_BUF_EMP) == 0) {
	u_short status = FUNC3(ioaddr + DATAPORT);

	FUNC5(dev, "Rxing packet mode %02x status %04x.\n",
		   FUNC1(ioaddr + RX_MODE), status);
#ifndef final_version
	if (status == 0) {
	    FUNC8(F_SKP_PKT, ioaddr + RX_SKIP);
	    break;
	}
#endif
	if ((status & 0xF0) != 0x20) {	/* There was an error. */
	    dev->stats.rx_errors++;
	    if (status & F_LEN_ERR) dev->stats.rx_length_errors++;
	    if (status & F_ALG_ERR) dev->stats.rx_frame_errors++;
	    if (status & F_CRC_ERR) dev->stats.rx_crc_errors++;
	    if (status & F_OVR_FLO) dev->stats.rx_over_errors++;
	} else {
	    u_short pkt_len = FUNC3(ioaddr + DATAPORT);
	    /* Malloc up new buffer. */
	    struct sk_buff *skb;

	    if (pkt_len > 1550) {
		FUNC6(dev, "The FMV-18x claimed a very large packet, size %d\n",
			      pkt_len);
		FUNC8(F_SKP_PKT, ioaddr + RX_SKIP);
		dev->stats.rx_errors++;
		break;
	    }
	    skb = FUNC4(dev, pkt_len + 2);
	    if (skb == NULL) {
		FUNC8(F_SKP_PKT, ioaddr + RX_SKIP);
		dev->stats.rx_dropped++;
		break;
	    }

	    FUNC11(skb, 2);
	    FUNC2(ioaddr + DATAPORT, FUNC10(skb, pkt_len),
		 (pkt_len + 1) >> 1);
	    skb->protocol = FUNC0(skb, dev);

	    {
		int i;
		FUNC9("%s: Rxed packet of length %d: ",
			dev->name, pkt_len);
		for (i = 0; i < 14; i++)
			FUNC9(" %02x", skb->data[i]);
		FUNC9(".\n");
	    }

	    FUNC7(skb);
	    dev->stats.rx_packets++;
	    dev->stats.rx_bytes += pkt_len;
	}
	if (--boguscount <= 0)
	    break;
    }

    /* If any worth-while packets have been received, dev_rint()
	   has done a netif_wake_queue() for us and will work on them
	   when we get to the bottom-half routine. */
/*
    if (lp->cardtype != TDK) {
	int i;
	for (i = 0; i < 20; i++) {
	    if ((inb(ioaddr + RX_MODE) & F_BUF_EMP) == F_BUF_EMP)
		break;
	    (void)inw(ioaddr + DATAPORT);  /+ dummy status read +/
	    outb(F_SKP_PKT, ioaddr + RX_SKIP);
	}

	if (i > 0)
	    pr_debug("%s: Exint Rx packet with mode %02x after "
		  "%d ticks.\n", dev->name, inb(ioaddr + RX_MODE), i);
    }
*/
}