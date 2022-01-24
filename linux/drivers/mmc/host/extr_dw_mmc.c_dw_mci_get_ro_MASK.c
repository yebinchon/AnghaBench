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
struct dw_mci_slot {int id; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRTPRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmc_host*) ; 
 struct dw_mci_slot* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc)
{
	int read_only;
	struct dw_mci_slot *slot = FUNC3(mmc);
	int gpio_ro = FUNC2(mmc);

	/* Use platform get_ro function, else try on board write protect */
	if (gpio_ro >= 0)
		read_only = gpio_ro;
	else
		read_only =
			FUNC1(slot->host, WRTPRT) & (1 << slot->id) ? 1 : 0;

	FUNC0(&mmc->class_dev, "card is %s\n",
		read_only ? "read-only" : "read-write");

	return read_only;
}