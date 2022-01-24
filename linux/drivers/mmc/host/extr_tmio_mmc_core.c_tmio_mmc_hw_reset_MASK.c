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
struct tmio_mmc_host {int /*<<< orphan*/  (* hw_reset ) (struct tmio_mmc_host*) ;int /*<<< orphan*/  (* reset ) (struct tmio_mmc_host*) ;} ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 struct tmio_mmc_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc)
{
	struct tmio_mmc_host *host = FUNC0(mmc);

	host->reset(host);

	FUNC3(host);

	if (host->hw_reset)
		host->hw_reset(host);
}