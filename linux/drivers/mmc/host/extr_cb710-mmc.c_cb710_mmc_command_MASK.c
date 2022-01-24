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
typedef  int /*<<< orphan*/  u16 ;
struct mmc_host {int dummy; } ;
struct mmc_data {int /*<<< orphan*/  error; int /*<<< orphan*/  blksz; int /*<<< orphan*/  blocks; } ;
struct mmc_command {int flags; scalar_t__ error; int /*<<< orphan*/  arg; struct mmc_data* data; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_MMC_CMD_PARAM_PORT ; 
 int /*<<< orphan*/  CB710_MMC_CMD_TYPE_PORT ; 
 int /*<<< orphan*/  CB710_MMC_CONFIG0_PORT ; 
 int /*<<< orphan*/  CB710_MMC_S1_COMMAND_SENT ; 
 int CB710_MMC_S2_BUSY_10 ; 
 int CB710_MMC_S2_BUSY_20 ; 
 int /*<<< orphan*/  EINVAL ; 
 int MMC_RSP_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_mmc_reader*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cb710_slot* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct cb710_slot*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct cb710_slot*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cb710_slot*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct cb710_slot*) ; 
 scalar_t__ FUNC9 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cb710_slot*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cb710_slot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cb710_mmc_reader* FUNC14 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC15(struct mmc_host *mmc, struct mmc_command *cmd)
{
	struct cb710_slot *slot = FUNC4(mmc);
	struct cb710_mmc_reader *reader = FUNC14(mmc);
	struct mmc_data *data = cmd->data;

	u16 cb_cmd = FUNC0(reader, cmd);
	FUNC13(FUNC8(slot), "cmd request: 0x%04X\n", cb_cmd);

	if (data) {
		if (!FUNC1(data)) {
			data->error = -EINVAL;
			return -1;
		}
		FUNC3(slot, data->blocks, data->blksz);
	}

	FUNC10(slot, CB710_MMC_S2_BUSY_20|CB710_MMC_S2_BUSY_10);
	FUNC11(slot, CB710_MMC_CMD_TYPE_PORT, cb_cmd);
	FUNC10(slot, CB710_MMC_S2_BUSY_20);
	FUNC12(slot, CB710_MMC_CMD_PARAM_PORT, cmd->arg);
	FUNC2(slot);
	FUNC10(slot, CB710_MMC_S2_BUSY_20);
	FUNC6(slot, CB710_MMC_CONFIG0_PORT, 0x01, 0);

	cmd->error = FUNC9(slot, CB710_MMC_S1_COMMAND_SENT);
	if (cmd->error)
		return -1;

	if (cmd->flags & MMC_RSP_PRESENT) {
		FUNC7(slot, cmd);
		if (cmd->error)
			return -1;
	}

	if (data)
		data->error = FUNC5(slot, data);
	return 0;
}