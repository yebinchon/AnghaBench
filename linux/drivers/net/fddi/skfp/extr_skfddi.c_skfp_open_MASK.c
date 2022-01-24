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
struct TYPE_3__ {int /*<<< orphan*/  a; } ;
struct TYPE_4__ {TYPE_1__ fddi_canon_addr; } ;
struct s_smc {TYPE_2__ hw; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  RX_DISABLE_PROMISC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct s_smc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s_smc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct s_smc*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  skfp_interrupt ; 
 int /*<<< orphan*/  FUNC10 (struct s_smc*,int) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct s_smc *smc = FUNC5(dev);
	int err;

	FUNC7("entering skfp_open\n");
	/* Register IRQ - support shared interrupts by passing device ptr */
	err = FUNC9(dev->irq, skfp_interrupt, IRQF_SHARED,
			  dev->name, dev);
	if (err)
		return err;

	/*
	 * Set current address to factory MAC address
	 *
	 * Note: We've already done this step in skfp_driver_init.
	 *       However, it's possible that a user has set a node
	 *               address override, then closed and reopened the
	 *               adapter.  Unless we reset the device address field
	 *               now, we'll continue to use the existing modified
	 *               address.
	 */
	FUNC8(smc, NULL);
	FUNC4(dev->dev_addr, smc->hw.fddi_canon_addr.a, ETH_ALEN);

	FUNC1(smc, NULL);
	FUNC10(smc, 1);
	FUNC0();

	/* Clear local multicast address tables */
	FUNC2(smc);

	/* Disable promiscuous filter settings */
	FUNC3(smc, RX_DISABLE_PROMISC);

	FUNC6(dev);
	return 0;
}