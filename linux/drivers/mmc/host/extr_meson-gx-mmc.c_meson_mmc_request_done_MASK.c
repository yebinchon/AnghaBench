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
struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
struct meson_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * cmd; } ;

/* Variables and functions */
 struct meson_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_request*) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *mmc,
				   struct mmc_request *mrq)
{
	struct meson_host *host = FUNC0(mmc);

	host->cmd = NULL;
	FUNC1(host->mmc, mrq);
}