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
typedef  int u32 ;
struct omap_hsmmc_host {TYPE_2__* mrq; scalar_t__ cmd; int /*<<< orphan*/  base; int /*<<< orphan*/  mmc; scalar_t__ response_busy; struct mmc_data* data; } ;
struct mmc_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sbc; } ;
struct TYPE_3__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC12 ; 
 int ACCE ; 
 int ACEB ; 
 int ACE_EN ; 
 int ACIE ; 
 int ACNE ; 
 int ACTO ; 
 int BADA_EN ; 
 int CCRC_EN ; 
 int CC_EN ; 
 int CEB_EN ; 
 int CTO_EN ; 
 int DCRC_EN ; 
 int DEB_EN ; 
 int DTO_EN ; 
 int EILSEQ ; 
 int ERR_EN ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STAT ; 
 int TC_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_hsmmc_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_hsmmc_host*,struct mmc_data*) ; 

__attribute__((used)) static void FUNC9(struct omap_hsmmc_host *host, int status)
{
	struct mmc_data *data;
	int end_cmd = 0, end_trans = 0;
	int error = 0;

	data = host->data;
	FUNC3(FUNC5(host->mmc), "IRQ Status is %x\n", status);

	if (status & ERR_EN) {
		FUNC7(host, status);

		if (status & (CTO_EN | CCRC_EN | CEB_EN))
			end_cmd = 1;
		if (host->data || host->response_busy) {
			end_trans = !end_cmd;
			host->response_busy = 0;
		}
		if (status & (CTO_EN | DTO_EN))
			FUNC4(host, -ETIMEDOUT, end_cmd);
		else if (status & (CCRC_EN | DCRC_EN | DEB_EN | CEB_EN |
				   BADA_EN))
			FUNC4(host, -EILSEQ, end_cmd);

		if (status & ACE_EN) {
			u32 ac12;
			ac12 = FUNC0(host->base, AC12);
			if (!(ac12 & ACNE) && host->mrq->sbc) {
				end_cmd = 1;
				if (ac12 & ACTO)
					error =  -ETIMEDOUT;
				else if (ac12 & (ACCE | ACEB | ACIE))
					error = -EILSEQ;
				host->mrq->sbc->error = error;
				FUNC4(host, error, end_cmd);
			}
			FUNC2(FUNC5(host->mmc), "AC12 err: 0x%x\n", ac12);
		}
	}

	FUNC1(host->base, STAT, status);
	if (end_cmd || ((status & CC_EN) && host->cmd))
		FUNC6(host, host->cmd);
	if ((end_trans || (status & TC_EN)) && host->mrq)
		FUNC8(host, data);
}