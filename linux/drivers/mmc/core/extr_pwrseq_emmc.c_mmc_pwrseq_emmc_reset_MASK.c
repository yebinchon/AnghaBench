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
struct mmc_pwrseq_emmc {int /*<<< orphan*/  reset_gpio; } ;
struct mmc_host {int /*<<< orphan*/  pwrseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct mmc_pwrseq_emmc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *host)
{
	struct mmc_pwrseq_emmc *pwrseq =  FUNC1(host->pwrseq);

	FUNC0(pwrseq->reset_gpio, 1);
	FUNC2(1);
	FUNC0(pwrseq->reset_gpio, 0);
	FUNC2(200);
}