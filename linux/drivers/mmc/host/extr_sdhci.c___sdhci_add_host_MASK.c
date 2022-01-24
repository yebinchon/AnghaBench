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
struct sdhci_host {int flags; int /*<<< orphan*/  complete_wq; int /*<<< orphan*/  irq; int /*<<< orphan*/  hw_name; int /*<<< orphan*/  buf_ready_int; int /*<<< orphan*/  data_timer; int /*<<< orphan*/  timer; int /*<<< orphan*/  complete_work; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int SDHCI_USE_64_BIT_DMA ; 
 int SDHCI_USE_ADMA ; 
 int SDHCI_USE_SDMA ; 
 unsigned int WQ_HIGHPRI ; 
 unsigned int WQ_MEM_RECLAIM ; 
 unsigned int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_complete_work ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdhci_irq ; 
 int FUNC15 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_thread_irq ; 
 int /*<<< orphan*/  sdhci_timeout_data_timer ; 
 int /*<<< orphan*/  sdhci_timeout_timer ; 
 int /*<<< orphan*/  FUNC17 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC19(struct sdhci_host *host)
{
	unsigned int flags = WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_HIGHPRI;
	struct mmc_host *mmc = host->mmc;
	int ret;

	host->complete_wq = FUNC1("sdhci", flags, 0);
	if (!host->complete_wq)
		return -ENOMEM;

	FUNC0(&host->complete_work, sdhci_complete_work);

	FUNC18(&host->timer, sdhci_timeout_timer, 0);
	FUNC18(&host->data_timer, sdhci_timeout_data_timer, 0);

	FUNC5(&host->buf_ready_int);

	FUNC14(host, 0);

	ret = FUNC11(host->irq, sdhci_irq, sdhci_thread_irq,
				   IRQF_SHARED,	FUNC8(mmc), host);
	if (ret) {
		FUNC9("%s: Failed to request IRQ %d: %d\n",
		       FUNC8(mmc), host->irq, ret);
		goto unwq;
	}

	ret = FUNC15(host);
	if (ret) {
		FUNC9("%s: Failed to register LED device: %d\n",
		       FUNC8(mmc), ret);
		goto unirq;
	}

	ret = FUNC6(mmc);
	if (ret)
		goto unled;

	FUNC10("%s: SDHCI controller on %s [%s] using %s\n",
		FUNC8(mmc), host->hw_name, FUNC3(FUNC7(mmc)),
		(host->flags & SDHCI_USE_ADMA) ?
		(host->flags & SDHCI_USE_64_BIT_DMA) ? "ADMA 64-bit" : "ADMA" :
		(host->flags & SDHCI_USE_SDMA) ? "DMA" : "PIO");

	FUNC13(host);

	return 0;

unled:
	FUNC16(host);
unirq:
	FUNC12(host, SDHCI_RESET_ALL);
	FUNC17(host, 0, SDHCI_INT_ENABLE);
	FUNC17(host, 0, SDHCI_SIGNAL_ENABLE);
	FUNC4(host->irq, host);
unwq:
	FUNC2(host->complete_wq);

	return ret;
}