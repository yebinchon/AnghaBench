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
struct sh_mmcif_plat_data {scalar_t__ ocr; } ;
struct sh_mmcif_host {struct mmc_host* mmc; } ;
struct mmc_host {scalar_t__ ocr_avail; } ;
struct device {struct sh_mmcif_plat_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct device* FUNC3 (struct sh_mmcif_host*) ; 

__attribute__((used)) static void FUNC4(struct sh_mmcif_host *host)
{
	struct device *dev = FUNC3(host);
	struct sh_mmcif_plat_data *pd = dev->platform_data;
	struct mmc_host *mmc = host->mmc;

	FUNC2(mmc);

	if (!pd)
		return;

	if (!mmc->ocr_avail)
		mmc->ocr_avail = pd->ocr;
	else if (pd->ocr)
		FUNC0(FUNC1(mmc), "Platform OCR mask is ignored\n");
}