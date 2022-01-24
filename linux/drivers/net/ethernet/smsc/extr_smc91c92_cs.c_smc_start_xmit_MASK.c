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
struct smc_private {int /*<<< orphan*/  lock; scalar_t__ rx_ovrn; int /*<<< orphan*/  packets_waiting; struct sk_buff* saved_skb; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_aborted_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 short IM_ALLOC_INT ; 
 unsigned int INTERRUPT ; 
 int MC_ALLOC ; 
 short MC_RESET ; 
 short MEMORY_WAIT_TIME ; 
 unsigned int MMU_CMD ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 short FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 struct smc_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (short,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb,
					struct net_device *dev)
{
    struct smc_private *smc = FUNC5(dev);
    unsigned int ioaddr = dev->base_addr;
    u_short num_pages;
    short time_out, ir;
    unsigned long flags;

    FUNC6(dev);

    FUNC3(dev, "smc_start_xmit(length = %d) called, status %04x\n",
	       skb->len, FUNC2(ioaddr + 2));

    if (smc->saved_skb) {
	/* THIS SHOULD NEVER HAPPEN. */
	dev->stats.tx_aborted_errors++;
	FUNC3(dev, "Internal error -- sent packet while busy\n");
	return NETDEV_TX_BUSY;
    }
    smc->saved_skb = skb;

    num_pages = skb->len >> 8;

    if (num_pages > 7) {
	FUNC4(dev, "Far too big packet error: %d pages\n", num_pages);
	FUNC1 (skb);
	smc->saved_skb = NULL;
	dev->stats.tx_dropped++;
	return NETDEV_TX_OK;		/* Do not re-queue this packet. */
    }
    /* A packet is now waiting. */
    smc->packets_waiting++;

    FUNC9(&smc->lock, flags);
    FUNC0(2);	/* Paranoia, we should always be in window 2 */

    /* need MC_RESET to keep the memory consistent. errata? */
    if (smc->rx_ovrn) {
	FUNC7(MC_RESET, ioaddr + MMU_CMD);
	smc->rx_ovrn = 0;
    }

    /* Allocate the memory; send the packet now if we win. */
    FUNC7(MC_ALLOC | num_pages, ioaddr + MMU_CMD);
    for (time_out = MEMORY_WAIT_TIME; time_out >= 0; time_out--) {
	ir = FUNC2(ioaddr+INTERRUPT);
	if (ir & IM_ALLOC_INT) {
	    /* Acknowledge the interrupt, send the packet. */
	    FUNC7((ir&0xff00) | IM_ALLOC_INT, ioaddr + INTERRUPT);
	    FUNC8(dev);	/* Send the packet now.. */
	    FUNC10(&smc->lock, flags);
	    return NETDEV_TX_OK;
	}
    }

    /* Otherwise defer until the Tx-space-allocated interrupt. */
    FUNC3(dev, "memory allocation deferred.\n");
    FUNC7((IM_ALLOC_INT << 8) | (ir & 0xff00), ioaddr + INTERRUPT);
    FUNC10(&smc->lock, flags);

    return NETDEV_TX_OK;
}