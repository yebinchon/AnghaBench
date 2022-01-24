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
struct msdc_host {scalar_t__ base; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  req_timeout; struct mmc_command* cmd; } ;
struct mmc_request {int dummy; } ;
struct mmc_command {int /*<<< orphan*/  arg; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAT_TIMEOUT ; 
 scalar_t__ MSDC_FIFOCS ; 
 int MSDC_FIFOCS_RXCNT ; 
 int MSDC_FIFOCS_TXCNT ; 
 scalar_t__ MSDC_INTEN ; 
 scalar_t__ SDC_ARG ; 
 scalar_t__ SDC_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_command*) ; 
 int /*<<< orphan*/  cmd_ints_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msdc_host*,struct mmc_request*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct msdc_host*,struct mmc_request*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdc_host*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_wq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct msdc_host *host,
		struct mmc_request *mrq, struct mmc_command *cmd)
{
	u32 rawcmd;
	unsigned long flags;

	FUNC0(host->cmd);
	host->cmd = cmd;

	FUNC2(system_wq, &host->req_timeout, DAT_TIMEOUT);
	if (!FUNC3(host, mrq, cmd))
		return;

	if ((FUNC6(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_TXCNT) >> 16 ||
	    FUNC6(host->base + MSDC_FIFOCS) & MSDC_FIFOCS_RXCNT) {
		FUNC1(host->dev, "TX/RX FIFO non-empty before start of IO. Reset\n");
		FUNC5(host);
	}

	cmd->error = 0;
	rawcmd = FUNC4(host, mrq, cmd);

	FUNC8(&host->lock, flags);
	FUNC7(host->base + MSDC_INTEN, cmd_ints_mask);
	FUNC9(&host->lock, flags);

	FUNC10(cmd->arg, host->base + SDC_ARG);
	FUNC10(rawcmd, host->base + SDC_CMD);
}