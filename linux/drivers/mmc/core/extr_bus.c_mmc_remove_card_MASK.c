#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mmc_host {int cqe_enabled; TYPE_1__* cqe_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct mmc_card {TYPE_2__ dev; int /*<<< orphan*/  rca; struct mmc_host* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* cqe_disable ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct mmc_card*) ; 
 scalar_t__ FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 

void FUNC9(struct mmc_card *card)
{
	struct mmc_host *host = card->host;

#ifdef CONFIG_DEBUG_FS
	mmc_remove_card_debugfs(card);
#endif

	if (host->cqe_enabled) {
		host->cqe_ops->cqe_disable(host);
		host->cqe_enabled = false;
	}

	if (FUNC1(card)) {
		if (FUNC2(card->host)) {
			FUNC6("%s: SPI card removed\n",
				FUNC3(card->host));
		} else {
			FUNC6("%s: card %04x removed\n",
				FUNC3(card->host), card->rca);
		}
		FUNC0(&card->dev);
		FUNC5(card->dev.of_node);
	}

	FUNC7(&card->dev);
}