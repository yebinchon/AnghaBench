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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags2; int tx_int_delay; int rx_int_delay; struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_RDTR_FPD ; 
 int E1000_TIDV_FPD ; 
 int FLAG2_DMA_BURST ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  TIDV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;

	if (!(adapter->flags2 & FLAG2_DMA_BURST))
		return;

	/* flush pending descriptor writebacks to memory */
	FUNC1(TIDV, adapter->tx_int_delay | E1000_TIDV_FPD);
	FUNC1(RDTR, adapter->rx_int_delay | E1000_RDTR_FPD);

	/* execute the writes immediately */
	FUNC0();

	/* due to rare timing issues, write to TIDV/RDTR again to ensure the
	 * write is successful
	 */
	FUNC1(TIDV, adapter->tx_int_delay | E1000_TIDV_FPD);
	FUNC1(RDTR, adapter->rx_int_delay | E1000_RDTR_FPD);

	/* execute the writes immediately */
	FUNC0();
}