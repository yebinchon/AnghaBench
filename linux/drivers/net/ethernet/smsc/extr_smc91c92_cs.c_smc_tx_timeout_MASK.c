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
struct smc_private {int /*<<< orphan*/ * saved_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int,int) ; 
 struct smc_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
    struct smc_private *smc = FUNC2(dev);
    unsigned int ioaddr = dev->base_addr;

    FUNC1(dev, "transmit timed out, Tx_status %2.2x status %4.4x.\n",
		  FUNC0(ioaddr)&0xff, FUNC0(ioaddr + 2));
    dev->stats.tx_errors++;
    FUNC5(dev);
    FUNC3(dev); /* prevent tx timeout */
    smc->saved_skb = NULL;
    FUNC4(dev);
}