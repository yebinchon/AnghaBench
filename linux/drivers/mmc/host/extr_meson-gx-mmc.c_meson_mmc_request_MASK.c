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
struct mmc_request {int /*<<< orphan*/  cmd; scalar_t__ sbc; TYPE_1__* data; } ;
struct mmc_host {int dummy; } ;
struct meson_host {scalar_t__ regs; } ;
struct TYPE_2__ {int host_cookie; } ;

/* Variables and functions */
 int SD_EMMC_PRE_REQ_DONE ; 
 scalar_t__ SD_EMMC_START ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 struct meson_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct meson_host *host = FUNC5(mmc);
	bool needs_pre_post_req = mrq->data &&
			!(mrq->data->host_cookie & SD_EMMC_PRE_REQ_DONE);

	if (needs_pre_post_req) {
		FUNC1(mmc, mrq);
		if (!FUNC0(mrq->data))
			needs_pre_post_req = false;
	}

	if (needs_pre_post_req)
		FUNC3(mmc, mrq);

	/* Stop execution */
	FUNC6(0, host->regs + SD_EMMC_START);

	FUNC4(mmc, mrq->sbc ?: mrq->cmd);

	if (needs_pre_post_req)
		FUNC2(mmc, mrq, 0);
}