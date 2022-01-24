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
struct sdhci_host {int /*<<< orphan*/  timer; int /*<<< orphan*/  data_timer; } ;
struct mmc_request {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host, struct mmc_request *mrq)
{
	if (FUNC1(mrq->cmd))
		FUNC0(&host->data_timer);
	else
		FUNC0(&host->timer);
}