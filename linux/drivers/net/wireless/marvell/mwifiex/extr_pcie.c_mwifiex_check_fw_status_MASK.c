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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int /*<<< orphan*/  fw_status; int /*<<< orphan*/  drv_rdy; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FIRMWARE_READY_PCIE ; 
 scalar_t__ HOST_INTR_MASK ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  PCIE_HOST_INT_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct mwifiex_adapter *adapter, u32 poll_num)
{
	int ret = 0;
	u32 firmware_stat;
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	u32 tries;

	/* Mask spurios interrupts */
	if (FUNC3(adapter, PCIE_HOST_INT_STATUS_MASK,
			      HOST_INTR_MASK)) {
		FUNC1(adapter, ERROR,
			    "Write register failed\n");
		return -1;
	}

	FUNC1(adapter, INFO,
		    "Setting driver ready signature\n");
	if (FUNC3(adapter, reg->drv_rdy,
			      FIRMWARE_READY_PCIE)) {
		FUNC1(adapter, ERROR,
			    "Failed to write driver ready signature\n");
		return -1;
	}

	/* Wait for firmware initialization event */
	for (tries = 0; tries < poll_num; tries++) {
		if (FUNC2(adapter, reg->fw_status,
				     &firmware_stat))
			ret = -1;
		else
			ret = 0;

		FUNC1(adapter, INFO, "Try %d if FW is ready <%d,%#x>",
			    tries, ret, firmware_stat);

		if (ret)
			continue;
		if (firmware_stat == FIRMWARE_READY_PCIE) {
			ret = 0;
			break;
		} else {
			FUNC0(100);
			ret = -1;
		}
	}

	return ret;
}