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
struct igbvf_ring {scalar_t__ itr_register; int /*<<< orphan*/  itr_val; int /*<<< orphan*/  eims_value; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igbvf_adapter {int /*<<< orphan*/  eims_other; int /*<<< orphan*/  eims_enable_mask; struct igbvf_ring* rx_ring; struct igbvf_ring* tx_ring; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_IVAR_VALID ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGBVF_NO_QUEUE ; 
 int /*<<< orphan*/  IVAR_MISC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct igbvf_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct igbvf_adapter *adapter)
{
	u32 tmp;
	struct e1000_hw *hw = &adapter->hw;
	struct igbvf_ring *tx_ring = adapter->tx_ring;
	struct igbvf_ring *rx_ring = adapter->rx_ring;
	int vector = 0;

	adapter->eims_enable_mask = 0;

	FUNC4(adapter, IGBVF_NO_QUEUE, 0, vector++);
	adapter->eims_enable_mask |= tx_ring->eims_value;
	FUNC5(tx_ring->itr_val, hw->hw_addr + tx_ring->itr_register);
	FUNC4(adapter, 0, IGBVF_NO_QUEUE, vector++);
	adapter->eims_enable_mask |= rx_ring->eims_value;
	FUNC5(rx_ring->itr_val, hw->hw_addr + rx_ring->itr_register);

	/* set vector for other causes, i.e. link changes */

	tmp = (vector++ | E1000_IVAR_VALID);

	FUNC3(IVAR_MISC, tmp);

	adapter->eims_enable_mask = FUNC1(vector - 1, 0);
	adapter->eims_other = FUNC0(vector - 1);
	FUNC2();
}