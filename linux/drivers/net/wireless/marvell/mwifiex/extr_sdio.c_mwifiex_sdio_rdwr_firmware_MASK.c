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
struct sdio_mmc_card {TYPE_1__* reg; int /*<<< orphan*/  func; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_2__ {scalar_t__ fw_dump_host_ready; int /*<<< orphan*/  fw_dump_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FW_DUMP_DONE ; 
 int MAX_POLL_TRIES ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 int RDWR_STATUS_SUCCESS ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static enum
rdwr_status FUNC4(struct mwifiex_adapter *adapter,
				       u8 doneflag)
{
	struct sdio_mmc_card *card = adapter->card;
	int ret, tries;
	u8 ctrl_data = 0;

	FUNC2(card->func, card->reg->fw_dump_host_ready,
		    card->reg->fw_dump_ctrl, &ret);
	if (ret) {
		FUNC0(adapter, ERROR, "SDIO Write ERR\n");
		return RDWR_STATUS_FAILURE;
	}
	for (tries = 0; tries < MAX_POLL_TRIES; tries++) {
		ctrl_data = FUNC1(card->func, card->reg->fw_dump_ctrl,
				       &ret);
		if (ret) {
			FUNC0(adapter, ERROR, "SDIO read err\n");
			return RDWR_STATUS_FAILURE;
		}
		if (ctrl_data == FW_DUMP_DONE)
			break;
		if (doneflag && ctrl_data == doneflag)
			return RDWR_STATUS_DONE;
		if (ctrl_data != card->reg->fw_dump_host_ready) {
			FUNC0(adapter, WARN,
				    "The ctrl reg was changed, re-try again\n");
			FUNC2(card->func, card->reg->fw_dump_host_ready,
				    card->reg->fw_dump_ctrl, &ret);
			if (ret) {
				FUNC0(adapter, ERROR, "SDIO write err\n");
				return RDWR_STATUS_FAILURE;
			}
		}
		FUNC3(100, 200);
	}
	if (ctrl_data == card->reg->fw_dump_host_ready) {
		FUNC0(adapter, ERROR,
			    "Fail to pull ctrl_data\n");
		return RDWR_STATUS_FAILURE;
	}

	return RDWR_STATUS_SUCCESS;
}