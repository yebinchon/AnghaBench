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
struct TYPE_2__ {scalar_t__ orthresh; scalar_t__ irthresh; } ;
union cvmx_mixx_isr {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
struct octeon_mgmt {int /*<<< orphan*/  tx_clean_tasklet; int /*<<< orphan*/  napi; scalar_t__ mix; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MIX_ISR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct octeon_mgmt* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_mgmt*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_mgmt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int cpl, void *dev_id)
{
	struct net_device *netdev = dev_id;
	struct octeon_mgmt *p = FUNC3(netdev);
	union cvmx_mixx_isr mixx_isr;

	mixx_isr.u64 = FUNC0(p->mix + MIX_ISR);

	/* Clear any pending interrupts */
	FUNC1(p->mix + MIX_ISR, mixx_isr.u64);
	FUNC0(p->mix + MIX_ISR);

	if (mixx_isr.s.irthresh) {
		FUNC4(p);
		FUNC2(&p->napi);
	}
	if (mixx_isr.s.orthresh) {
		FUNC5(p);
		FUNC6(&p->tx_clean_tasklet);
	}

	return IRQ_HANDLED;
}