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
struct net_device {int base_addr; } ;
struct arcnet_local {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM20020_REG_W_CONFIG ; 
 int /*<<< orphan*/  TXENcfg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct arcnet_local* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct arcnet_local *lp = FUNC1(dev);
	int ioaddr = dev->base_addr;

	/* disable transmitter */
	lp->config &= ~TXENcfg;
	FUNC0(lp->config, ioaddr, COM20020_REG_W_CONFIG);
}