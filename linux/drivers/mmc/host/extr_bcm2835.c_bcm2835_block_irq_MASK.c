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
struct bcm2835_host {scalar_t__ blocks; TYPE_1__* data; int /*<<< orphan*/  dma_desc; } ;
struct TYPE_2__ {int flags; scalar_t__ error; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_host*) ; 

__attribute__((used)) static void FUNC4(struct bcm2835_host *host)
{
	if (FUNC0(!host->data)) {
		FUNC1(host);
		return;
	}

	if (!host->dma_desc) {
		FUNC0(!host->blocks);
		if (host->data->error || (--host->blocks == 0))
			FUNC2(host);
		else
			FUNC3(host);
	} else if (host->data->flags & MMC_DATA_WRITE) {
		FUNC2(host);
	}
}