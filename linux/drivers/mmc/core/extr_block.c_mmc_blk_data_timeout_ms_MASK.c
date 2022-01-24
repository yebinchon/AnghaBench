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
struct mmc_host {int dummy; } ;
struct mmc_data {scalar_t__ timeout_clks; scalar_t__ timeout_ns; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,unsigned int) ; 
 unsigned int FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static unsigned int FUNC2(struct mmc_host *host,
					    struct mmc_data *data)
{
	unsigned int ms = FUNC0(data->timeout_ns, 1000000);
	unsigned int khz;

	if (data->timeout_clks) {
		khz = FUNC1(host);
		ms += FUNC0(data->timeout_clks, khz);
	}

	return ms;
}