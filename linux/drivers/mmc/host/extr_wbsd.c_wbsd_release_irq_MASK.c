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
struct wbsd_host {int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  timeout_tasklet; int /*<<< orphan*/  crc_tasklet; int /*<<< orphan*/  fifo_tasklet; int /*<<< orphan*/  card_tasklet; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void  FUNC2(struct wbsd_host *host)
{
	if (!host->irq)
		return;

	FUNC0(host->irq, host);

	host->irq = 0;

	FUNC1(&host->card_tasklet);
	FUNC1(&host->fifo_tasklet);
	FUNC1(&host->crc_tasklet);
	FUNC1(&host->timeout_tasklet);
	FUNC1(&host->finish_tasklet);
}