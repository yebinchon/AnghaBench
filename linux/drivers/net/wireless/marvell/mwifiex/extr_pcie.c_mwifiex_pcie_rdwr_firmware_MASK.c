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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {scalar_t__ fw_dump_host_ready; int /*<<< orphan*/  fw_dump_ctrl; int /*<<< orphan*/  fw_status; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FW_DUMP_DONE ; 
 int MAX_POLL_TRIES ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 int RDWR_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static enum rdwr_status
FUNC5(struct mwifiex_adapter *adapter, u8 doneflag)
{
	int ret, tries;
	u8 ctrl_data;
	u32 fw_status;
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

	if (FUNC1(adapter, reg->fw_status, &fw_status))
		return RDWR_STATUS_FAILURE;

	ret = FUNC3(adapter, reg->fw_dump_ctrl,
				reg->fw_dump_host_ready);
	if (ret) {
		FUNC0(adapter, ERROR,
			    "PCIE write err\n");
		return RDWR_STATUS_FAILURE;
	}

	for (tries = 0; tries < MAX_POLL_TRIES; tries++) {
		FUNC2(adapter, reg->fw_dump_ctrl, &ctrl_data);
		if (ctrl_data == FW_DUMP_DONE)
			return RDWR_STATUS_SUCCESS;
		if (doneflag && ctrl_data == doneflag)
			return RDWR_STATUS_DONE;
		if (ctrl_data != reg->fw_dump_host_ready) {
			FUNC0(adapter, WARN,
				    "The ctrl reg was changed, re-try again!\n");
			ret = FUNC3(adapter, reg->fw_dump_ctrl,
						reg->fw_dump_host_ready);
			if (ret) {
				FUNC0(adapter, ERROR,
					    "PCIE write err\n");
				return RDWR_STATUS_FAILURE;
			}
		}
		FUNC4(100, 200);
	}

	FUNC0(adapter, ERROR, "Fail to pull ctrl_data\n");
	return RDWR_STATUS_FAILURE;
}