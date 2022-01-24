#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct spider_net_card {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPIDER_NET_GPCROPCMD ; 
 int SPIDER_NET_GPRDAT_MASK ; 
 int SPIDER_NET_GPREXEC ; 
 struct spider_net_card* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct spider_net_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spider_net_card*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, int mii_id, int reg)
{
	struct spider_net_card *card = FUNC0(netdev);
	u32 readvalue;

	readvalue = ((u32)mii_id << 21) | ((u32)reg << 16);
	FUNC2(card, SPIDER_NET_GPCROPCMD, readvalue);

	/* we don't use semaphores to wait for an SPIDER_NET_GPROPCMPINT
	 * interrupt, as we poll for the completion of the read operation
	 * in spider_net_read_phy. Should take about 50 us */
	do {
		readvalue = FUNC1(card, SPIDER_NET_GPCROPCMD);
	} while (readvalue & SPIDER_NET_GPREXEC);

	readvalue &= SPIDER_NET_GPRDAT_MASK;

	return readvalue;
}