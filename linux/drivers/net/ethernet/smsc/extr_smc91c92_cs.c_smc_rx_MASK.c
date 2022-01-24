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
struct smc_private {int /*<<< orphan*/  last_rx; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ DATA_1 ; 
 scalar_t__ FIFO_PORTS ; 
 int FP_RXEMPTY ; 
 int MC_RELEASE ; 
 scalar_t__ MMU_CMD ; 
 scalar_t__ POINTER ; 
 int PTR_AUTOINC ; 
 int PTR_RCV ; 
 int PTR_READ ; 
 int RS_ALGNERR ; 
 int RS_BADCRC ; 
 int RS_ERRORS ; 
 int RS_MULTICAST ; 
 int RS_ODDFRAME ; 
 int RS_TOOLONG ; 
 int RS_TOOSHORT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct smc_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    int rx_status;
    int packet_length;	/* Caution: not frame length, rather words
			   to transfer from the chip. */

    /* Assertion: we are in Window 2. */

    if (FUNC2(ioaddr + FIFO_PORTS) & FP_RXEMPTY) {
	FUNC5(dev, "smc_rx() with nothing on Rx FIFO\n");
	return;
    }

    /*  Reset the read pointer, and read the status and packet length. */
    FUNC8(PTR_READ | PTR_RCV | PTR_AUTOINC, ioaddr + POINTER);
    rx_status = FUNC2(ioaddr + DATA_1);
    packet_length = FUNC2(ioaddr + DATA_1) & 0x07ff;

    FUNC4(dev, "Receive status %4.4x length %d.\n",
	       rx_status, packet_length);

    if (!(rx_status & RS_ERRORS)) {
	/* do stuff to make a new packet */
	struct sk_buff *skb;
	struct smc_private *smc = FUNC6(dev);
	
	/* Note: packet_length adds 5 or 6 extra bytes here! */
	skb = FUNC3(dev, packet_length+2);
	
	if (skb == NULL) {
	    FUNC4(dev, "Low memory, packet dropped.\n");
	    dev->stats.rx_dropped++;
	    FUNC8(MC_RELEASE, ioaddr + MMU_CMD);
	    return;
	}
	
	packet_length -= (rx_status & RS_ODDFRAME ? 5 : 6);
	FUNC10(skb, 2);
	FUNC1(ioaddr+DATA_1, FUNC9(skb, packet_length),
	     (packet_length+1)>>1);
	skb->protocol = FUNC0(skb, dev);
	
	FUNC7(skb);
	smc->last_rx = jiffies;
	dev->stats.rx_packets++;
	dev->stats.rx_bytes += packet_length;
	if (rx_status & RS_MULTICAST)
	    dev->stats.multicast++;
    } else {
	/* error ... */
	dev->stats.rx_errors++;
	
	if (rx_status & RS_ALGNERR)  dev->stats.rx_frame_errors++;
	if (rx_status & (RS_TOOSHORT | RS_TOOLONG))
	    dev->stats.rx_length_errors++;
	if (rx_status & RS_BADCRC)	dev->stats.rx_crc_errors++;
    }
    /* Let the MMU free the memory of this packet. */
    FUNC8(MC_RELEASE, ioaddr + MMU_CMD);
}