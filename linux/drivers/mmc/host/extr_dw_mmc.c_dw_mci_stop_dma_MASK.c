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
struct dw_mci {int /*<<< orphan*/  pending_events; TYPE_1__* dma_ops; scalar_t__ using_dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct dw_mci*) ;int /*<<< orphan*/  (* stop ) (struct dw_mci*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_XFER_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*) ; 

__attribute__((used)) static void FUNC3(struct dw_mci *host)
{
	if (host->using_dma) {
		host->dma_ops->stop(host);
		host->dma_ops->cleanup(host);
	}

	/* Data transfer was stopped by the interrupt handler */
	FUNC0(EVENT_XFER_COMPLETE, &host->pending_events);
}