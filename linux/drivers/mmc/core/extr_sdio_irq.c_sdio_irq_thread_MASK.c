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
struct sched_param {int sched_priority; } ;
struct mmc_host {int caps; TYPE_1__* ops; int /*<<< orphan*/  sdio_irq_thread_abort; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_sdio_irq ) (struct mmc_host*,int) ;} ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long MAX_SCHEDULE_TIMEOUT ; 
 int MMC_CAP_SDIO_IRQ ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int FUNC0 (struct mmc_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mmc_host*,int) ; 

__attribute__((used)) static int FUNC12(void *_host)
{
	struct mmc_host *host = _host;
	struct sched_param param = { .sched_priority = 1 };
	unsigned long period, idle_period;
	int ret;

	FUNC7(current, SCHED_FIFO, &param);

	/*
	 * We want to allow for SDIO cards to work even on non SDIO
	 * aware hosts.  One thing that non SDIO host cannot do is
	 * asynchronous notification of pending SDIO card interrupts
	 * hence we poll for them in that case.
	 */
	idle_period = FUNC4(10);
	period = (host->caps & MMC_CAP_SDIO_IRQ) ?
		MAX_SCHEDULE_TIMEOUT : idle_period;

	FUNC5("%s: IRQ thread started (poll period = %lu jiffies)\n",
		 FUNC2(host), period);

	do {
		/*
		 * We claim the host here on drivers behalf for a couple
		 * reasons:
		 *
		 * 1) it is already needed to retrieve the CCCR_INTx;
		 * 2) we want the driver(s) to clear the IRQ condition ASAP;
		 * 3) we need to control the abort condition locally.
		 *
		 * Just like traditional hard IRQ handlers, we expect SDIO
		 * IRQ handlers to be quick and to the point, so that the
		 * holding of the host lock does not cover too much work
		 * that doesn't require that lock to be held.
		 */
		ret = FUNC0(host, NULL,
				       &host->sdio_irq_thread_abort);
		if (ret)
			break;
		ret = FUNC6(host);
		FUNC3(host);

		/*
		 * Give other threads a chance to run in the presence of
		 * errors.
		 */
		if (ret < 0) {
			FUNC9(TASK_INTERRUPTIBLE);
			if (!FUNC1())
				FUNC8(HZ);
			FUNC9(TASK_RUNNING);
		}

		/*
		 * Adaptive polling frequency based on the assumption
		 * that an interrupt will be closely followed by more.
		 * This has a substantial benefit for network devices.
		 */
		if (!(host->caps & MMC_CAP_SDIO_IRQ)) {
			if (ret > 0)
				period /= 2;
			else {
				period++;
				if (period > idle_period)
					period = idle_period;
			}
		}

		FUNC9(TASK_INTERRUPTIBLE);
		if (host->caps & MMC_CAP_SDIO_IRQ)
			host->ops->enable_sdio_irq(host, 1);
		if (!FUNC1())
			FUNC8(period);
		FUNC9(TASK_RUNNING);
	} while (!FUNC1());

	if (host->caps & MMC_CAP_SDIO_IRQ)
		host->ops->enable_sdio_irq(host, 0);

	FUNC5("%s: IRQ thread exiting with code %d\n",
		 FUNC2(host), ret);

	return ret;
}