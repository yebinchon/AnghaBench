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
struct mmc_host {int bus_dead; int /*<<< orphan*/  lock; int /*<<< orphan*/  bus_ops; int /*<<< orphan*/  claimed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mmc_host *host)
{
	unsigned long flags;

	FUNC0(!host->claimed);
	FUNC0(!host->bus_ops);

	FUNC2(&host->lock, flags);

	host->bus_dead = 1;

	FUNC3(&host->lock, flags);

	FUNC1(host);
}