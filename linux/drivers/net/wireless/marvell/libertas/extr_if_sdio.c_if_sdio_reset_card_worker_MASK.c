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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  reset_host ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	/*
	 * The actual reset operation must be run outside of lbs_thread. This
	 * is because mmc_remove_host() will cause the device to be instantly
	 * destroyed, and the libertas driver then needs to end lbs_thread,
	 * leading to a deadlock.
	 *
	 * We run it in a workqueue totally independent from the if_sdio_card
	 * instance for that reason.
	 */

	FUNC2("Resetting card...");
	FUNC1(reset_host);
	FUNC0(reset_host);
}