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
struct mmc_data {scalar_t__ error; } ;
struct bcm2835_host {int /*<<< orphan*/  use_busy; TYPE_1__* mrq; int /*<<< orphan*/  use_sbc; struct mmc_data* data; int /*<<< orphan*/  data_complete; } ;
struct TYPE_2__ {scalar_t__ stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_host*) ; 
 scalar_t__ FUNC3 (struct bcm2835_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_host*) ; 

__attribute__((used)) static void FUNC5(struct bcm2835_host *host)
{
	struct mmc_data *data;

	FUNC0(!host->data_complete);

	data = host->data;
	host->data = NULL;

	/* Need to send CMD12 if -
	 * a) open-ended multiblock transfer (no CMD23)
	 * b) error in multiblock transfer
	 */
	if (host->mrq->stop && (data->error || !host->use_sbc)) {
		if (FUNC3(host, host->mrq->stop)) {
			/* No busy, so poll for completion */
			if (!host->use_busy)
				FUNC1(host);
		}
	} else {
		FUNC4(host);
		FUNC2(host);
	}
}