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
struct tmio_mmc_host {scalar_t__ chan_tx; scalar_t__ chan_rx; } ;
struct mmc_data {int flags; } ;

/* Variables and functions */
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC2(struct tmio_mmc_host *host,
					    struct mmc_data *data)
{
	if (data->flags & MMC_DATA_READ) {
		if (host->chan_rx)
			FUNC0(host);
	} else {
		if (host->chan_tx)
			FUNC1(host);
	}
}