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
struct pcie_service_card {scalar_t__ msix_enable; scalar_t__ msi_enable; } ;
struct mwifiex_adapter {int int_status; scalar_t__ ps_state; int pm_wakeup_fw_try; int /*<<< orphan*/  int_lock; int /*<<< orphan*/  wakeup_timer; int /*<<< orphan*/  pps_uapsd_mode; struct pcie_service_card* card; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  PCIE_HOST_INT_STATUS ; 
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC4 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC5 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct mwifiex_adapter *adapter,
				     int msg_id)
{
	u32 pcie_ireg;
	unsigned long flags;
	struct pcie_service_card *card = adapter->card;

	if (card->msi_enable) {
		FUNC7(&adapter->int_lock, flags);
		adapter->int_status = 1;
		FUNC8(&adapter->int_lock, flags);
		return;
	}

	if (!FUNC4(adapter))
		return;

	if (card->msix_enable && msg_id >= 0) {
		pcie_ireg = FUNC0(msg_id);
	} else {
		if (FUNC5(adapter, PCIE_HOST_INT_STATUS,
				     &pcie_ireg)) {
			FUNC2(adapter, ERROR, "Read register failed\n");
			return;
		}

		if ((pcie_ireg == 0xFFFFFFFF) || !pcie_ireg)
			return;


		FUNC3(adapter);

		/* Clear the pending interrupts */
		if (FUNC6(adapter, PCIE_HOST_INT_STATUS,
				      ~pcie_ireg)) {
			FUNC2(adapter, ERROR,
				    "Write register failed\n");
			return;
		}
	}

	if (!adapter->pps_uapsd_mode &&
	    adapter->ps_state == PS_STATE_SLEEP &&
	    FUNC4(adapter)) {
		/* Potentially for PCIe we could get other
		 * interrupts like shared. Don't change power
		 * state until cookie is set
		 */
		adapter->ps_state = PS_STATE_AWAKE;
		adapter->pm_wakeup_fw_try = false;
		FUNC1(&adapter->wakeup_timer);
	}

	FUNC7(&adapter->int_lock, flags);
	adapter->int_status |= pcie_ireg;
	FUNC8(&adapter->int_lock, flags);
	FUNC2(adapter, INTR, "ireg: 0x%08x\n", pcie_ireg);
}