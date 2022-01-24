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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ clock; } ;
struct mmc_host {TYPE_1__ ios; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_180 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 scalar_t__ FUNC2 (struct mmc_host*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mmc_host *host)
{
	u32 clock;

	/*
	 * During a signal voltage level switch, the clock must be gated
	 * for 5 ms according to the SD spec
	 */
	clock = host->ios.clock;
	host->ios.clock = 0;
	FUNC1(host);

	if (FUNC2(host, MMC_SIGNAL_VOLTAGE_180))
		return -EAGAIN;

	/* Keep clock gated for at least 10 ms, though spec only says 5 ms */
	FUNC0(10);
	host->ios.clock = clock;
	FUNC1(host);

	return 0;
}