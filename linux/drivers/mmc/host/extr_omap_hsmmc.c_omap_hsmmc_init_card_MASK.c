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
struct omap_hsmmc_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init_card ) (struct mmc_card*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct omap_hsmmc_host*) ; 
 struct omap_hsmmc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, struct mmc_card *card)
{
	struct omap_hsmmc_host *host = FUNC1(mmc);

	if (FUNC0(host)->init_card)
		FUNC0(host)->init_card(card);
}