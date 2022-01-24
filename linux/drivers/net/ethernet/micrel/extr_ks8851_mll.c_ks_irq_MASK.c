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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ks_net {TYPE_2__* netdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_LCI ; 
 int IRQ_LDI ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_RXI ; 
 int IRQ_RXOI ; 
 int IRQ_TXI ; 
 int /*<<< orphan*/  KS_ISR ; 
 int /*<<< orphan*/  KS_PMECR ; 
 int PMECR_WKEVT_LINK ; 
 int PMECR_WKEVT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*,struct net_device*) ; 
 int FUNC1 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct ks_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 struct ks_net* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *pw)
{
	struct net_device *netdev = pw;
	struct ks_net *ks = FUNC7(netdev);
	u16 status;

	/*this should be the first in IRQ handler */
	FUNC3(ks);

	status = FUNC1(ks, KS_ISR);
	if (FUNC9(!status)) {
		FUNC2(ks);
		return IRQ_NONE;
	}

	FUNC5(ks, KS_ISR, status);

	if (FUNC6(status & IRQ_RXI))
		FUNC0(ks, netdev);

	if (FUNC9(status & IRQ_LCI))
		FUNC4(netdev, ks);

	if (FUNC9(status & IRQ_TXI))
		FUNC8(netdev);

	if (FUNC9(status & IRQ_LDI)) {

		u16 pmecr = FUNC1(ks, KS_PMECR);
		pmecr &= ~PMECR_WKEVT_MASK;
		FUNC5(ks, KS_PMECR, pmecr | PMECR_WKEVT_LINK);
	}

	if (FUNC9(status & IRQ_RXOI))
		ks->netdev->stats.rx_over_errors++;
	/* this should be the last in IRQ handler*/
	FUNC2(ks);
	return IRQ_HANDLED;
}