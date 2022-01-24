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
struct mmc_request {int /*<<< orphan*/  cmd; } ;
struct mmc_host {int dummy; } ;
struct jz4740_mmc_host {int /*<<< orphan*/  timeout_timer; int /*<<< orphan*/  waiting; int /*<<< orphan*/  state; struct mmc_request* req; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  JZ4740_MMC_STATE_READ_RESPONSE ; 
 int /*<<< orphan*/  JZ_MMC_IRQ_END_CMD_RES ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct jz4740_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4740_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_mmc_host*,int /*<<< orphan*/ ) ; 
 struct jz4740_mmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *req)
{
	struct jz4740_mmc_host *host = FUNC3(mmc);

	host->req = req;

	FUNC2(host, ~0);
	FUNC1(host, JZ_MMC_IRQ_END_CMD_RES, true);

	host->state = JZ4740_MMC_STATE_READ_RESPONSE;
	FUNC5(0, &host->waiting);
	FUNC4(&host->timeout_timer, jiffies + 5*HZ);
	FUNC0(host, req->cmd);
}