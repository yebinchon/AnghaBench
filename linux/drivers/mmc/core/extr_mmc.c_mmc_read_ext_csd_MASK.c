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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int capacity; } ;
struct mmc_card {int /*<<< orphan*/  host; TYPE_1__ csd; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int FUNC2 (struct mmc_card*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mmc_card*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mmc_card *card)
{
	u8 *ext_csd;
	int err;

	if (!FUNC1(card))
		return 0;

	err = FUNC3(card, &ext_csd);
	if (err) {
		/* If the host or the card can't do the switch,
		 * fail more gracefully. */
		if ((err != -EINVAL)
		 && (err != -ENOSYS)
		 && (err != -EFAULT))
			return err;

		/*
		 * High capacity cards should have this "magic" size
		 * stored in their CSD.
		 */
		if (card->csd.capacity == (4096 * 512)) {
			FUNC5("%s: unable to read EXT_CSD on a possible high capacity card. Card will be ignored.\n",
				FUNC4(card->host));
		} else {
			FUNC6("%s: unable to read EXT_CSD, performance might suffer\n",
				FUNC4(card->host));
			err = 0;
		}

		return err;
	}

	err = FUNC2(card, ext_csd);
	FUNC0(ext_csd);
	return err;
}