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
struct mmc_host {int can_retune; int retune_period; int /*<<< orphan*/  retune_timer; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC1(struct mmc_host *host)
{
	host->can_retune = 1;
	if (host->retune_period)
		FUNC0(&host->retune_timer,
			  jiffies + host->retune_period * HZ);
}