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
typedef  int /*<<< orphan*/  u32 ;
struct ena_ring {int /*<<< orphan*/  ena_com_io_cq; int /*<<< orphan*/  smoothed_interval; int /*<<< orphan*/  ena_dev; } ;
struct ena_eth_io_intr_reg {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ena_eth_io_intr_reg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_eth_io_intr_reg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ena_ring *tx_ring,
					struct ena_ring *rx_ring)
{
	struct ena_eth_io_intr_reg intr_reg;
	u32 rx_interval = FUNC0(rx_ring->ena_dev) ?
		rx_ring->smoothed_interval :
		FUNC1(rx_ring->ena_dev);

	/* Update intr register: rx intr delay,
	 * tx intr delay and interrupt unmask
	 */
	FUNC3(&intr_reg,
				rx_interval,
				tx_ring->smoothed_interval,
				true);

	/* It is a shared MSI-X.
	 * Tx and Rx CQ have pointer to it.
	 * So we use one of them to reach the intr reg
	 */
	FUNC2(rx_ring->ena_com_io_cq, &intr_reg);
}