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
struct sdhci_host {int pending_reset; struct mmc_request** mrqs_done; TYPE_3__* data; TYPE_2__* data_cmd; TYPE_1__* cmd; } ;
struct mmc_request {int dummy; } ;
struct TYPE_6__ {struct mmc_request* mrq; } ;
struct TYPE_5__ {struct mmc_request* mrq; } ;
struct TYPE_4__ {struct mmc_request* mrq; } ;

/* Variables and functions */
 int SDHCI_MAX_MRQS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 scalar_t__ FUNC4 (struct sdhci_host*,struct mmc_request*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, struct mmc_request *mrq)
{
	int i;

	if (host->cmd && host->cmd->mrq == mrq)
		host->cmd = NULL;

	if (host->data_cmd && host->data_cmd->mrq == mrq)
		host->data_cmd = NULL;

	if (host->data && host->data->mrq == mrq)
		host->data = NULL;

	if (FUNC4(host, mrq))
		host->pending_reset = true;

	for (i = 0; i < SDHCI_MAX_MRQS; i++) {
		if (host->mrqs_done[i] == mrq) {
			FUNC0(1);
			return;
		}
	}

	for (i = 0; i < SDHCI_MAX_MRQS; i++) {
		if (!host->mrqs_done[i]) {
			host->mrqs_done[i] = mrq;
			break;
		}
	}

	FUNC0(i >= SDHCI_MAX_MRQS);

	FUNC1(host, mrq);

	if (!FUNC2(host))
		FUNC3(host);
}