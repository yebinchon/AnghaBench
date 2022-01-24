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
struct mmc_host {int /*<<< orphan*/  class_dev; } ;
struct atmel_mci_slot {int detect_is_active_high; int /*<<< orphan*/  detect_pin; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct atmel_mci_slot* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	int			present = -ENOSYS;
	struct atmel_mci_slot	*slot = FUNC3(mmc);

	if (FUNC2(slot->detect_pin)) {
		present = !(FUNC1(slot->detect_pin) ^
			    slot->detect_is_active_high);
		FUNC0(&mmc->class_dev, "card is %spresent\n",
				present ? "" : "not ");
	}

	return present;
}