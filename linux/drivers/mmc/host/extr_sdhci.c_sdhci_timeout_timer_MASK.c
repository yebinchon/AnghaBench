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
struct timer_list {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  lock; TYPE_1__* cmd; int /*<<< orphan*/  mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  mrq; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 struct sdhci_host* FUNC0 (struct sdhci_host*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct sdhci_host *host;
	unsigned long flags;

	host = FUNC0(host, t, timer);

	FUNC6(&host->lock, flags);

	if (host->cmd && !FUNC3(host->cmd)) {
		FUNC2("%s: Timeout waiting for hardware cmd interrupt.\n",
		       FUNC1(host->mmc));
		FUNC4(host);

		host->cmd->error = -ETIMEDOUT;
		FUNC5(host, host->cmd->mrq);
	}

	FUNC7(&host->lock, flags);
}