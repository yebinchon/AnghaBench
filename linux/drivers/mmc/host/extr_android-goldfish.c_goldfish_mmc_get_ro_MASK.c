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
typedef  int uint32_t ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct goldfish_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_STATE ; 
 int MMC_STATE_READ_ONLY ; 
 struct goldfish_mmc_host* FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC2(struct mmc_host *mmc)
{
	uint32_t state;
	struct goldfish_mmc_host *host = FUNC1(mmc);

	state = FUNC0(host, MMC_STATE);
	return ((state & MMC_STATE_READ_ONLY) != 0);
}