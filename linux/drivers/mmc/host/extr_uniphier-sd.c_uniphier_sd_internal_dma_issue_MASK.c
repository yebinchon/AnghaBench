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
struct tmio_mmc_host {scalar_t__ ctl; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TMIO_STAT_DATAEND ; 
 scalar_t__ UNIPHIER_SD_DMA_CTL ; 
 int /*<<< orphan*/  UNIPHIER_SD_DMA_CTL_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned long arg)
{
	struct tmio_mmc_host *host = (void *)arg;
	unsigned long flags;

	FUNC0(&host->lock, flags);
	FUNC2(host, TMIO_STAT_DATAEND);
	FUNC1(&host->lock, flags);

	FUNC3(host, 1);
	FUNC4(UNIPHIER_SD_DMA_CTL_START, host->ctl + UNIPHIER_SD_DMA_CTL);
}