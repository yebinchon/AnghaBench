#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tmio_mmc_host {int /*<<< orphan*/  ios_lock; int /*<<< orphan*/  clk_cache; TYPE_5__* mrq; TYPE_2__* pdev; int /*<<< orphan*/  (* set_clock ) (struct tmio_mmc_host*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  last_req_ts; } ;
struct mmc_ios {int power_mode; int /*<<< orphan*/  clock; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  vdd; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {TYPE_1__* cmd; } ;
struct TYPE_9__ {int /*<<< orphan*/  comm; } ;
struct TYPE_8__ {struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINTR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  jiffies ; 
 struct tmio_mmc_host* FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct tmio_mmc_host *host = FUNC4(mmc);
	struct device *dev = &host->pdev->dev;
	unsigned long flags;

	FUNC5(&host->ios_lock);

	FUNC7(&host->lock, flags);
	if (host->mrq) {
		if (FUNC1(host->mrq)) {
			FUNC3(dev,
				"%s.%d: concurrent .set_ios(), clk %u, mode %u\n",
				current->comm, FUNC12(current),
				ios->clock, ios->power_mode);
			host->mrq = FUNC0(-EINTR);
		} else {
			FUNC3(dev,
				"%s.%d: CMD%u active since %lu, now %lu!\n",
				current->comm, FUNC12(current),
				host->mrq->cmd->opcode, host->last_req_ts,
				jiffies);
		}
		FUNC8(&host->lock, flags);

		FUNC6(&host->ios_lock);
		return;
	}

	host->mrq = FUNC0(-EBUSY);

	FUNC8(&host->lock, flags);

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		FUNC13(host);
		host->set_clock(host, 0);
		break;
	case MMC_POWER_UP:
		FUNC14(host, ios->vdd);
		host->set_clock(host, ios->clock);
		FUNC15(host, ios->bus_width);
		break;
	case MMC_POWER_ON:
		host->set_clock(host, ios->clock);
		FUNC15(host, ios->bus_width);
		break;
	}

	/* Let things settle. delay taken from winCE driver */
	FUNC16(140, 200);
	if (FUNC2(host->mrq) == -EINTR)
		FUNC3(&host->pdev->dev,
			"%s.%d: IOS interrupted: clk %u, mode %u",
			current->comm, FUNC12(current),
			ios->clock, ios->power_mode);
	host->mrq = NULL;

	host->clk_cache = ios->clock;

	FUNC6(&host->ios_lock);
}