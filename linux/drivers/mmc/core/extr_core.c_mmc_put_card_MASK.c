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
struct mmc_host {struct mmc_ctx* claimer; } ;
struct mmc_ctx {int dummy; } ;
struct mmc_card {int /*<<< orphan*/  dev; struct mmc_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mmc_card *card, struct mmc_ctx *ctx)
{
	struct mmc_host *host = card->host;

	FUNC0(ctx && host->claimer != ctx);

	FUNC1(host);
	FUNC2(&card->dev);
	FUNC3(&card->dev);
}