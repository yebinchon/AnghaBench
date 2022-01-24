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
struct mmci_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  data; scalar_t__ base; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MMCICOMMAND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct mmci_host *host, struct mmc_request *mrq)
{
	FUNC2(0, host->base + MMCICOMMAND);

	FUNC0(host->data);

	host->mrq = NULL;
	host->cmd = NULL;

	FUNC1(host->mmc, mrq);
}