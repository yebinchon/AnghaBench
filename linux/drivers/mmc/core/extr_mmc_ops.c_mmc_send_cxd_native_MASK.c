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
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int flags; int /*<<< orphan*/  resp; int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int MMC_CMD_AC ; 
 int /*<<< orphan*/  MMC_CMD_RETRIES ; 
 int MMC_RSP_R2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mmc_host*,struct mmc_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct mmc_host *host, u32 arg, u32 *cxd, int opcode)
{
	int err;
	struct mmc_command cmd = {};

	cmd.opcode = opcode;
	cmd.arg = arg;
	cmd.flags = MMC_RSP_R2 | MMC_CMD_AC;

	err = FUNC1(host, &cmd, MMC_CMD_RETRIES);
	if (err)
		return err;

	FUNC0(cxd, cmd.resp, sizeof(u32) * 4);

	return 0;
}