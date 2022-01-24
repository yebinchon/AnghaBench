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
typedef  int u32 ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_davinci_host {scalar_t__ do_dma; int /*<<< orphan*/  mmc; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MMCST1 ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int MMCST1_BUSY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_davinci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_davinci_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mmc_davinci_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 unsigned long FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_request *req)
{
	struct mmc_davinci_host *host = FUNC5(mmc);
	unsigned long timeout = jiffies + FUNC7(900);
	u32 mmcst1 = 0;

	/* Card may still be sending BUSY after a previous operation,
	 * typically some kind of write.  If so, we can't proceed yet.
	 */
	while (FUNC9(jiffies, timeout)) {
		mmcst1  = FUNC8(host->base + DAVINCI_MMCST1);
		if (!(mmcst1 & MMCST1_BUSY))
			break;
		FUNC0();
	}
	if (mmcst1 & MMCST1_BUSY) {
		FUNC1(FUNC4(host->mmc), "still BUSY? bad ... \n");
		req->cmd->error = -ETIMEDOUT;
		FUNC6(mmc, req);
		return;
	}

	host->do_dma = 0;
	FUNC2(host, req);
	FUNC3(host, req->cmd);
}