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
struct net_device {int /*<<< orphan*/  irq; } ;
struct ks_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_IER ; 
 int /*<<< orphan*/  KS_ISR ; 
 int /*<<< orphan*/  PMECR_PM_SOFTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC1 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ks_net* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ks_net*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev)
{
	struct ks_net *ks = FUNC6(netdev);

	FUNC7(ks, ifdown, netdev, "shutting down\n");

	FUNC8(netdev);

	FUNC4(&ks->lock);

	/* turn off the IRQs and ack any outstanding */
	FUNC3(ks, KS_IER, 0x0000);
	FUNC3(ks, KS_ISR, 0xffff);

	/* shutdown RX/TX QMU */
	FUNC1(ks);

	/* set powermode to soft power down to save power */
	FUNC2(ks, PMECR_PM_SOFTDOWN);
	FUNC0(netdev->irq, netdev);
	FUNC5(&ks->lock);
	return 0;
}