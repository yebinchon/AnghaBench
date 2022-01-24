#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct s3cmci_host {int real_rate; int /*<<< orphan*/  bus_width; scalar_t__ base; TYPE_3__* pdata; int /*<<< orphan*/  is2440; TYPE_2__* pdev; } ;
struct mmc_ios {int power_mode; int clock; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_power ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ S3C2410_SDICON ; 
 int /*<<< orphan*/  S3C2410_SDICON_CLOCKTYPE ; 
 int /*<<< orphan*/  S3C2410_SDICON_FIFORESET ; 
 int /*<<< orphan*/  S3C2440_SDICON_SDRESET ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dbg_conf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct s3cmci_host* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s3cmci_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct s3cmci_host *host = FUNC4(mmc);
	u32 mci_con;

	/* Set the power state */

	mci_con = FUNC5(host->base + S3C2410_SDICON);

	switch (ios->power_mode) {
	case MMC_POWER_ON:
	case MMC_POWER_UP:
		/* Configure GPE5...GPE10 pins in SD mode */
		if (!host->pdev->dev.of_node)
			FUNC6(FUNC0(5), 6, FUNC1(2),
					      S3C_GPIO_PULL_NONE);

		if (host->pdata->set_power)
			host->pdata->set_power(ios->power_mode, ios->vdd);

		if (!host->is2440)
			mci_con |= S3C2410_SDICON_FIFORESET;

		break;

	case MMC_POWER_OFF:
	default:
		if (!host->pdev->dev.of_node)
			FUNC3(FUNC0(5), 0);

		if (host->is2440)
			mci_con |= S3C2440_SDICON_SDRESET;

		if (host->pdata->set_power)
			host->pdata->set_power(ios->power_mode, ios->vdd);

		break;
	}

	FUNC7(host, ios);

	/* Set CLOCK_ENABLE */
	if (ios->clock)
		mci_con |= S3C2410_SDICON_CLOCKTYPE;
	else
		mci_con &= ~S3C2410_SDICON_CLOCKTYPE;

	FUNC10(mci_con, host->base + S3C2410_SDICON);

	if ((ios->power_mode == MMC_POWER_ON) ||
	    (ios->power_mode == MMC_POWER_UP)) {
		FUNC2(host, dbg_conf, "running at %lukHz (requested: %ukHz).\n",
			host->real_rate/1000, ios->clock/1000);
	} else {
		FUNC2(host, dbg_conf, "powered down.\n");
	}

	host->bus_width = ios->bus_width;
}