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
struct mmc_pwrseq_simple {int clk_enabled; int /*<<< orphan*/  ext_clk; } ;
struct mmc_host {int /*<<< orphan*/  pwrseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_pwrseq_simple*,int) ; 
 struct mmc_pwrseq_simple* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *host)
{
	struct mmc_pwrseq_simple *pwrseq = FUNC3(host->pwrseq);

	if (!FUNC0(pwrseq->ext_clk) && !pwrseq->clk_enabled) {
		FUNC1(pwrseq->ext_clk);
		pwrseq->clk_enabled = true;
	}

	FUNC2(pwrseq, 1);
}