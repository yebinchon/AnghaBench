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
struct mmc_host {int caps; int /*<<< orphan*/  class_dev; } ;
struct dw_mci_slot {int id; int /*<<< orphan*/  flags; struct dw_mci* host; } ;
struct dw_mci {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDETECT ; 
 int /*<<< orphan*/  DW_MMC_CARD_PRESENT ; 
 int MMC_CAP_NEEDS_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*) ; 
 struct dw_mci_slot* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct mmc_host *mmc)
{
	int present;
	struct dw_mci_slot *slot = FUNC5(mmc);
	struct dw_mci *host = slot->host;
	int gpio_cd = FUNC4(mmc);

	/* Use platform get_cd function, else try onboard card detect */
	if (((mmc->caps & MMC_CAP_NEEDS_POLL)
				|| !FUNC3(mmc))) {
		present = 1;

		if (!FUNC11(DW_MMC_CARD_PRESENT, &slot->flags)) {
			if (mmc->caps & MMC_CAP_NEEDS_POLL) {
				FUNC1(&mmc->class_dev,
					"card is polling.\n");
			} else {
				FUNC1(&mmc->class_dev,
					"card is non-removable.\n");
			}
			FUNC6(DW_MMC_CARD_PRESENT, &slot->flags);
		}

		return present;
	} else if (gpio_cd >= 0)
		present = gpio_cd;
	else
		present = (FUNC2(slot->host, CDETECT) & (1 << slot->id))
			== 0 ? 1 : 0;

	FUNC7(&host->lock);
	if (present && !FUNC10(DW_MMC_CARD_PRESENT, &slot->flags))
		FUNC0(&mmc->class_dev, "card is present\n");
	else if (!present &&
			!FUNC9(DW_MMC_CARD_PRESENT, &slot->flags))
		FUNC0(&mmc->class_dev, "card is not present\n");
	FUNC8(&host->lock);

	return present;
}