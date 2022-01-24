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
struct mmc_pwrseq_sd8787 {int /*<<< orphan*/  pwrdn_gpio; int /*<<< orphan*/  reset_gpio; } ;
struct mmc_host {int /*<<< orphan*/  pwrseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mmc_pwrseq_sd8787* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *host)
{
	struct mmc_pwrseq_sd8787 *pwrseq = FUNC2(host->pwrseq);

	FUNC0(pwrseq->reset_gpio, 1);

	FUNC1(300);
	FUNC0(pwrseq->pwrdn_gpio, 1);
}