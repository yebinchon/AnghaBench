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
struct TYPE_2__ {unsigned int clock; } ;
struct mmc_host {unsigned int f_min; unsigned int f_max; TYPE_1__ ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 

void FUNC2(struct mmc_host *host, unsigned int hz)
{
	FUNC0(hz && hz < host->f_min);

	if (hz > host->f_max)
		hz = host->f_max;

	host->ios.clock = hz;
	FUNC1(host);
}