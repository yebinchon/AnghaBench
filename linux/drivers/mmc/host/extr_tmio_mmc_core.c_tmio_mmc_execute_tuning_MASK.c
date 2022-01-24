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
typedef  int /*<<< orphan*/  u32 ;
struct tmio_mmc_host {int (* init_tuning ) (struct tmio_mmc_host*) ;int (* select_tuning ) (struct tmio_mmc_host*) ;int tap_num; TYPE_1__* pdev; int /*<<< orphan*/  taps; int /*<<< orphan*/  (* prepare_tuning ) (struct tmio_mmc_host*,int) ;} ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct tmio_mmc_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*,int) ; 
 int FUNC8 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC10(struct mmc_host *mmc, u32 opcode)
{
	struct tmio_mmc_host *host = FUNC3(mmc);
	int i, ret = 0;

	if (!host->init_tuning || !host->select_tuning)
		/* Tuning is not supported */
		goto out;

	host->tap_num = host->init_tuning(host);
	if (!host->tap_num)
		/* Tuning is not supported */
		goto out;

	if (host->tap_num * 2 >= sizeof(host->taps) * BITS_PER_BYTE) {
		FUNC2(&host->pdev->dev,
			"Too many taps, skipping tuning. Please consider updating size of taps field of tmio_mmc_host\n");
		goto out;
	}

	FUNC0(host->taps, host->tap_num * 2);

	/* Issue CMD19 twice for each tap */
	for (i = 0; i < 2 * host->tap_num; i++) {
		if (host->prepare_tuning)
			host->prepare_tuning(host, i % host->tap_num);

		ret = FUNC4(mmc, opcode, NULL);
		if (ret == 0)
			FUNC5(i, host->taps);
	}

	ret = host->select_tuning(host);

out:
	if (ret < 0) {
		FUNC1(&host->pdev->dev, "Tuning procedure failed\n");
		FUNC9(mmc);
	}

	return ret;
}