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
struct ena_ring {scalar_t__ no_interrupt_event_cnt; int /*<<< orphan*/  qid; int /*<<< orphan*/  ena_com_io_cq; int /*<<< orphan*/  first_interrupt; } ;
struct ena_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_MAX_NO_INTERRUPT_ITERATIONS ; 
 int /*<<< orphan*/  ENA_REGS_RESET_MISS_INTERRUPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct ena_adapter *adapter,
					struct ena_ring *rx_ring)
{
	if (FUNC1(rx_ring->first_interrupt))
		return 0;

	if (FUNC0(rx_ring->ena_com_io_cq))
		return 0;

	rx_ring->no_interrupt_event_cnt++;

	if (rx_ring->no_interrupt_event_cnt == ENA_MAX_NO_INTERRUPT_ITERATIONS) {
		FUNC2(adapter, rx_err, adapter->netdev,
			  "Potential MSIX issue on Rx side Queue = %d. Reset the device\n",
			  rx_ring->qid);
		adapter->reset_reason = ENA_REGS_RESET_MISS_INTERRUPT;
		FUNC4();
		FUNC3(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
		return -EIO;
	}

	return 0;
}