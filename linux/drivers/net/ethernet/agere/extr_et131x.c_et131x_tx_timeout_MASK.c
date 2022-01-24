#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tx_ring {struct tcb* send_head; } ;
struct tcb {scalar_t__ count; int /*<<< orphan*/  index; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {int flags; TYPE_3__* netdev; TYPE_1__* pdev; int /*<<< orphan*/  tcb_send_qlock; struct tx_ring tx_ring; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FMP_ADAPTER_HARDWARE_ERROR ; 
 int FMP_ADAPTER_INTERRUPT_IN_USE ; 
 int FMP_ADAPTER_NON_RECOVER_ERROR ; 
 scalar_t__ NIC_SEND_HANG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct et131x_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC4(netdev);
	struct tx_ring *tx_ring = &adapter->tx_ring;
	struct tcb *tcb;
	unsigned long flags;

	/* If the device is closed, ignore the timeout */
	if (!(adapter->flags & FMP_ADAPTER_INTERRUPT_IN_USE))
		return;

	/* Any nonrecoverable hardware error?
	 * Checks adapter->flags for any failure in phy reading
	 */
	if (adapter->flags & FMP_ADAPTER_NON_RECOVER_ERROR)
		return;

	/* Hardware failure? */
	if (adapter->flags & FMP_ADAPTER_HARDWARE_ERROR) {
		FUNC0(&adapter->pdev->dev, "hardware error - reset\n");
		return;
	}

	/* Is send stuck? */
	FUNC5(&adapter->tcb_send_qlock, flags);
	tcb = tx_ring->send_head;
	FUNC6(&adapter->tcb_send_qlock, flags);

	if (tcb) {
		tcb->count++;

		if (tcb->count > NIC_SEND_HANG_THRESHOLD) {
			FUNC1(&adapter->pdev->dev,
				 "Send stuck - reset. tcb->WrIndex %x\n",
				 tcb->index);

			adapter->netdev->stats.tx_errors++;

			/* perform reset of tx/rx */
			FUNC2(netdev);
			FUNC3(netdev);
		}
	}
}