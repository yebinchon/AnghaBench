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
struct toshsd_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cmd; struct mmc_request* mrq; } ;
struct mmc_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct toshsd_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct toshsd_host *host)
{
	struct mmc_request *mrq = host->mrq;

	/* Write something to end the command */
	host->mrq = NULL;
	host->cmd = NULL;
	host->data = NULL;

	FUNC1(host, 0);
	FUNC0(host->mmc, mrq);
}