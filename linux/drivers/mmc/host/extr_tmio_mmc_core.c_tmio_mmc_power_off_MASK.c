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
struct tmio_mmc_host {int /*<<< orphan*/  pdev; int /*<<< orphan*/  (* set_pwr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmmc; int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tmio_mmc_host *host)
{
	struct mmc_host *mmc = host->mmc;

	if (!FUNC0(mmc->supply.vqmmc))
		FUNC2(mmc->supply.vqmmc);

	if (!FUNC0(mmc->supply.vmmc))
		FUNC1(mmc, mmc->supply.vmmc, 0);

	if (host->set_pwr)
		host->set_pwr(host->pdev, 0);
}