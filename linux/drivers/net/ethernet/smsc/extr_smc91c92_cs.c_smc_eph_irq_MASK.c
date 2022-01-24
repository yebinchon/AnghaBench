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
struct smc_private {int duplex; } ;
struct TYPE_2__ {int collisions; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ CONTROL ; 
 scalar_t__ COUNTER ; 
 int CTL_AUTO_RELEASE ; 
 int CTL_CR_ENABLE ; 
 int CTL_TE_ENABLE ; 
 scalar_t__ EPH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCR ; 
 int TCR_ENABLE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct smc_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
    struct smc_private *smc = FUNC3(dev);
    unsigned int ioaddr = dev->base_addr;
    u_short card_stats, ephs;

    FUNC0(0);
    ephs = FUNC1(ioaddr + EPH);
    FUNC2(dev, "Ethernet protocol handler interrupt, status %4.4x.\n",
	       ephs);
    /* Could be a counter roll-over warning: update stats. */
    card_stats = FUNC1(ioaddr + COUNTER);
    /* single collisions */
    dev->stats.collisions += card_stats & 0xF;
    card_stats >>= 4;
    /* multiple collisions */
    dev->stats.collisions += card_stats & 0xF;
#if 0 		/* These are for when linux supports these statistics */
    card_stats >>= 4;			/* deferred */
    card_stats >>= 4;			/* excess deferred */
#endif
    /* If we had a transmit error we must re-enable the transmitter. */
    FUNC4(FUNC1(ioaddr + TCR) | TCR_ENABLE | smc->duplex, ioaddr + TCR);

    /* Clear a link error interrupt. */
    FUNC0(1);
    FUNC4(CTL_AUTO_RELEASE | 0x0000, ioaddr + CONTROL);
    FUNC4(CTL_AUTO_RELEASE | CTL_TE_ENABLE | CTL_CR_ENABLE,
	 ioaddr + CONTROL);
    FUNC0(2);
}