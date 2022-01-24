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
typedef  int u_int ;
typedef  int u_char ;
struct smc_private {struct sk_buff* saved_skb; } ;
struct sk_buff {int len; int* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ DATA_1 ; 
 int IM_TX_EMPTY_INT ; 
 int IM_TX_INT ; 
 scalar_t__ INTERRUPT ; 
 int MC_ENQUEUE ; 
 scalar_t__ MMU_CMD ; 
 scalar_t__ PNR_ARR ; 
 scalar_t__ POINTER ; 
 int PTR_AUTOINC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct smc_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct net_device * dev)
{
    struct smc_private *smc = FUNC4(dev);
    struct sk_buff *skb = smc->saved_skb;
    unsigned int ioaddr = dev->base_addr;
    u_char packet_no;

    if (!skb) {
	FUNC3(dev, "In XMIT with no packet to send\n");
	return;
    }

    /* There should be a packet slot waiting. */
    packet_no = FUNC1(ioaddr + PNR_ARR) >> 8;
    if (packet_no & 0x80) {
	/* If not, there is a hardware problem!  Likely an ejected card. */
	FUNC5(dev, "hardware Tx buffer allocation failed, status %#2.2x\n",
		    packet_no);
	FUNC0(skb);
	smc->saved_skb = NULL;
	FUNC6(dev);
	return;
    }

    dev->stats.tx_bytes += skb->len;
    /* The card should use the just-allocated buffer. */
    FUNC9(packet_no, ioaddr + PNR_ARR);
    /* point to the beginning of the packet */
    FUNC9(PTR_AUTOINC , ioaddr + POINTER);

    /* Send the packet length (+6 for status, length and ctl byte)
       and the status word (set to zeros). */
    {
	u_char *buf = skb->data;
	u_int length = skb->len; /* The chip will pad to ethernet min. */

	FUNC2(dev, "Trying to xmit packet of length %d\n", length);
	
	/* send the packet length: +6 for status word, length, and ctl */
	FUNC9(0, ioaddr + DATA_1);
	FUNC9(length + 6, ioaddr + DATA_1);
	FUNC8(ioaddr + DATA_1, buf, length >> 1);
	
	/* The odd last byte, if there is one, goes in the control word. */
	FUNC9((length & 1) ? 0x2000 | buf[length-1] : 0, ioaddr + DATA_1);
    }

    /* Enable the Tx interrupts, both Tx (TxErr) and TxEmpty. */
    FUNC9(((IM_TX_INT|IM_TX_EMPTY_INT)<<8) |
	 (FUNC1(ioaddr + INTERRUPT) & 0xff00),
	 ioaddr + INTERRUPT);

    /* The chip does the rest of the work. */
    FUNC9(MC_ENQUEUE , ioaddr + MMU_CMD);

    smc->saved_skb = NULL;
    FUNC0(skb);
    FUNC7(dev);
    FUNC6(dev);
}