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
struct TYPE_2__ {void* vqmmc; void* vmmc; } ;
struct mmc_host {int ocr_avail; TYPE_1__ supply; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 void* FUNC4 (struct device*,char*) ; 
 struct device* FUNC5 (struct mmc_host*) ; 
 int FUNC6 (void*) ; 

int FUNC7(struct mmc_host *mmc)
{
	struct device *dev = FUNC5(mmc);
	int ret;

	mmc->supply.vmmc = FUNC4(dev, "vmmc");
	mmc->supply.vqmmc = FUNC4(dev, "vqmmc");

	if (FUNC0(mmc->supply.vmmc)) {
		if (FUNC1(mmc->supply.vmmc) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC2(dev, "No vmmc regulator found\n");
	} else {
		ret = FUNC6(mmc->supply.vmmc);
		if (ret > 0)
			mmc->ocr_avail = ret;
		else
			FUNC3(dev, "Failed getting OCR mask: %d\n", ret);
	}

	if (FUNC0(mmc->supply.vqmmc)) {
		if (FUNC1(mmc->supply.vqmmc) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC2(dev, "No vqmmc regulator found\n");
	}

	return 0;
}