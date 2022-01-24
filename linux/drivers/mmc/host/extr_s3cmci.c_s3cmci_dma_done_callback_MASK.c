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
struct s3cmci_host {int dma_complete; int /*<<< orphan*/  complete_lock; int /*<<< orphan*/  pio_tasklet; int /*<<< orphan*/  complete_what; TYPE_1__* mrq; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMPLETION_FINALIZE ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dbg_dma ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct s3cmci_host *host = arg;
	unsigned long iflags;

	FUNC0(!host->mrq);
	FUNC0(!host->mrq->data);

	FUNC2(&host->complete_lock, iflags);

	FUNC1(host, dbg_dma, "DMA FINISHED\n");

	host->dma_complete = 1;
	host->complete_what = COMPLETION_FINALIZE;

	FUNC4(&host->pio_tasklet);
	FUNC3(&host->complete_lock, iflags);

}