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
typedef  int u16 ;
struct via_crdr_mmc_host {int /*<<< orphan*/  lock; scalar_t__ sdhc_mmiobase; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ VIA_CRDR_SDSTATUS ; 
 int VIA_CRDR_SDSTS_WP ; 
 struct via_crdr_mmc_host* FUNC0 (struct mmc_host*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	struct via_crdr_mmc_host *host;
	unsigned long flags;
	u16 status;

	host = FUNC0(mmc);

	FUNC2(&host->lock, flags);

	status = FUNC1(host->sdhc_mmiobase + VIA_CRDR_SDSTATUS);

	FUNC3(&host->lock, flags);

	return !(status & VIA_CRDR_SDSTS_WP);
}