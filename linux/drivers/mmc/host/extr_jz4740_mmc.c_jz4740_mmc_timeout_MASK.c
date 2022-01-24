#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct jz4740_mmc_host {TYPE_2__* req; int /*<<< orphan*/  waiting; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  JZ_MMC_IRQ_END_CMD_RES ; 
 struct jz4740_mmc_host* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct jz4740_mmc_host* host ; 
 int /*<<< orphan*/  FUNC1 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct jz4740_mmc_host *host = FUNC0(host, t, timeout_timer);

	if (!FUNC3(0, &host->waiting))
		return;

	FUNC2(host, JZ_MMC_IRQ_END_CMD_RES, false);

	host->req->cmd->error = -ETIMEDOUT;
	FUNC1(host);
}