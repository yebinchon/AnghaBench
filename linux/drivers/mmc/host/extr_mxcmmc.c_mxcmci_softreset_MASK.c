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
struct mxcmci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_REG_RES_TO ; 
 int /*<<< orphan*/  MMC_REG_STR_STP_CLK ; 
 int STR_STP_CLK_RESET ; 
 int STR_STP_CLK_START_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mxcmci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mxcmci_host *host)
{
	int i;

	FUNC0(FUNC1(host->mmc), "mxcmci_softreset\n");

	/* reset sequence */
	FUNC2(host, STR_STP_CLK_RESET, MMC_REG_STR_STP_CLK);
	FUNC2(host, STR_STP_CLK_RESET | STR_STP_CLK_START_CLK,
			MMC_REG_STR_STP_CLK);

	for (i = 0; i < 8; i++)
		FUNC2(host, STR_STP_CLK_START_CLK, MMC_REG_STR_STP_CLK);

	FUNC2(host, 0xff, MMC_REG_RES_TO);
}