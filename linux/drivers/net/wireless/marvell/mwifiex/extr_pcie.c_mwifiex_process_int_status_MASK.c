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
struct pcie_service_card {int /*<<< orphan*/  msix_enable; scalar_t__ msi_enable; } ;
struct mwifiex_adapter {int int_status; scalar_t__ ps_state; int pm_wakeup_fw_try; int cmd_sent; int /*<<< orphan*/  data_sent; int /*<<< orphan*/  wakeup_timer; int /*<<< orphan*/  pps_uapsd_mode; int /*<<< orphan*/  int_lock; struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int HOST_INTR_CMD_DONE ; 
 int HOST_INTR_DNLD_DONE ; 
 int HOST_INTR_EVENT_RDY ; 
 int HOST_INTR_UPLD_RDY ; 
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  PCIE_HOST_INT_STATUS ; 
 scalar_t__ PS_STATE_AWAKE ; 
 scalar_t__ PS_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC3 (struct mwifiex_adapter*) ; 
 int FUNC4 (struct mwifiex_adapter*) ; 
 int FUNC5 (struct mwifiex_adapter*) ; 
 int FUNC6 (struct mwifiex_adapter*) ; 
 int FUNC7 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC8 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct mwifiex_adapter *adapter)
{
	int ret;
	u32 pcie_ireg = 0;
	unsigned long flags;
	struct pcie_service_card *card = adapter->card;

	FUNC10(&adapter->int_lock, flags);
	if (!card->msi_enable) {
		/* Clear out unused interrupts */
		pcie_ireg = adapter->int_status;
	}
	adapter->int_status = 0;
	FUNC11(&adapter->int_lock, flags);

	if (card->msi_enable) {
		if (FUNC3(adapter)) {
			if (FUNC8(adapter, PCIE_HOST_INT_STATUS,
					     &pcie_ireg)) {
				FUNC1(adapter, ERROR,
					    "Read register failed\n");
				return -1;
			}

			if ((pcie_ireg != 0xFFFFFFFF) && (pcie_ireg)) {
				if (FUNC9(adapter,
						      PCIE_HOST_INT_STATUS,
						      ~pcie_ireg)) {
					FUNC1(adapter, ERROR,
						    "Write register failed\n");
					return -1;
				}
				if (!adapter->pps_uapsd_mode &&
				    adapter->ps_state == PS_STATE_SLEEP) {
					adapter->ps_state = PS_STATE_AWAKE;
					adapter->pm_wakeup_fw_try = false;
					FUNC0(&adapter->wakeup_timer);
				}
			}
		}
	}

	if (pcie_ireg & HOST_INTR_DNLD_DONE) {
		FUNC1(adapter, INTR, "info: TX DNLD Done\n");
		ret = FUNC7(adapter);
		if (ret)
			return ret;
	}
	if (pcie_ireg & HOST_INTR_UPLD_RDY) {
		FUNC1(adapter, INTR, "info: Rx DATA\n");
		ret = FUNC6(adapter);
		if (ret)
			return ret;
	}
	if (pcie_ireg & HOST_INTR_EVENT_RDY) {
		FUNC1(adapter, INTR, "info: Rx EVENT\n");
		ret = FUNC5(adapter);
		if (ret)
			return ret;
	}
	if (pcie_ireg & HOST_INTR_CMD_DONE) {
		if (adapter->cmd_sent) {
			FUNC1(adapter, INTR,
				    "info: CMD sent Interrupt\n");
			adapter->cmd_sent = false;
		}
		/* Handle command response */
		ret = FUNC4(adapter);
		if (ret)
			return ret;
	}

	FUNC1(adapter, INTR,
		    "info: cmd_sent=%d data_sent=%d\n",
		    adapter->cmd_sent, adapter->data_sent);
	if (!card->msi_enable && !card->msix_enable &&
				 adapter->ps_state != PS_STATE_SLEEP)
		FUNC2(adapter);

	return 0;
}