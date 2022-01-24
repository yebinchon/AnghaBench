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
struct au1xmmc_host {int flags; int /*<<< orphan*/  data_task; int /*<<< orphan*/  mrq; } ;

/* Variables and functions */
 int HOST_F_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct au1xmmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(int irq, void *dev_id)
{
	struct au1xmmc_host *host = (struct au1xmmc_host *)dev_id;

	/* Avoid spurious interrupts */
	if (!host->mrq)
		return;

	if (host->flags & HOST_F_STOP)
		FUNC0(host);

	FUNC1(&host->data_task);
}