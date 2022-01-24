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
struct mmc_host {scalar_t__ retune_period; int /*<<< orphan*/  card; int /*<<< orphan*/  sdio_irq_work; scalar_t__ sdio_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mmc_host *host)
{
	FUNC0(host->sdio_irqs && !FUNC2(host));

	/* Prevent processing of SDIO IRQs in suspended state. */
	FUNC3(host->card);
	FUNC1(&host->sdio_irq_work);

	FUNC5(host);

	if (FUNC2(host) && FUNC4(host))
		FUNC10(host->card);

	if (!FUNC2(host)) {
		FUNC6(host);
	} else if (host->retune_period) {
		FUNC9(host);
		FUNC8(host);
	}

	FUNC7(host);

	return 0;
}