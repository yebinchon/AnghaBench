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
struct cvm_mmc_host {int /*<<< orphan*/  global_pwr_gpiod; int /*<<< orphan*/  shared_power_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct cvm_mmc_host *host, int dir)
{
	if (dir == 0)
		if (!FUNC0(&host->shared_power_users))
			FUNC2(host->global_pwr_gpiod, 0);
	if (dir == 1)
		if (FUNC1(&host->shared_power_users) == 1)
			FUNC2(host->global_pwr_gpiod, 1);
}