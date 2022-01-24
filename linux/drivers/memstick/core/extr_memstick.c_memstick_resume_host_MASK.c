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
struct memstick_host {int /*<<< orphan*/  lock; scalar_t__ card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct memstick_host*) ; 
 int FUNC1 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct memstick_host *host)
{
	int rc = 0;

	FUNC2(&host->lock);
	if (host->card)
		rc = FUNC1(host);
	FUNC3(&host->lock);

	if (!rc)
		FUNC0(host);
}