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
struct msdc_host {int /*<<< orphan*/  error; int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;
struct mmc_command {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ MMC_RSP_R1B ; 
 int /*<<< orphan*/  MSDC_INT_CMDTMO ; 
 int /*<<< orphan*/  REQ_CMD_BUSY ; 
 scalar_t__ SDC_STS ; 
 int SDC_STS_CMDBUSY ; 
 int SDC_STS_SDCBUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdc_host*,int /*<<< orphan*/ ,struct mmc_request*,struct mmc_command*) ; 
 unsigned long FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline bool FUNC7(struct msdc_host *host,
		struct mmc_request *mrq, struct mmc_command *cmd)
{
	/* The max busy time we can endure is 20ms */
	unsigned long tmo = jiffies + FUNC4(20);

	while ((FUNC5(host->base + SDC_STS) & SDC_STS_CMDBUSY) &&
			FUNC6(jiffies, tmo))
		FUNC0();
	if (FUNC5(host->base + SDC_STS) & SDC_STS_CMDBUSY) {
		FUNC1(host->dev, "CMD bus busy detected\n");
		host->error |= REQ_CMD_BUSY;
		FUNC3(host, MSDC_INT_CMDTMO, mrq, cmd);
		return false;
	}

	if (FUNC2(cmd) == MMC_RSP_R1B || cmd->data) {
		tmo = jiffies + FUNC4(20);
		/* R1B or with data, should check SDCBUSY */
		while ((FUNC5(host->base + SDC_STS) & SDC_STS_SDCBUSY) &&
				FUNC6(jiffies, tmo))
			FUNC0();
		if (FUNC5(host->base + SDC_STS) & SDC_STS_SDCBUSY) {
			FUNC1(host->dev, "Controller busy detected\n");
			host->error |= REQ_CMD_BUSY;
			FUNC3(host, MSDC_INT_CMDTMO, mrq, cmd);
			return false;
		}
	}
	return true;
}