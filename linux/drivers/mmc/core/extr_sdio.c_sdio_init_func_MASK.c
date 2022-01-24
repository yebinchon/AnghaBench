#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sdio_func {unsigned int num; TYPE_2__* card; int /*<<< orphan*/  max_blksize; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct mmc_card {int quirks; struct sdio_func** sdio_func; } ;
struct TYPE_3__ {int /*<<< orphan*/  blksize; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct TYPE_4__ {TYPE_1__ cis; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sdio_func*) ; 
 int MMC_QUIRK_NONSTD_SDIO ; 
 int FUNC1 (struct sdio_func*) ; 
 unsigned int SDIO_MAX_FUNCS ; 
 scalar_t__ FUNC2 (int) ; 
 struct sdio_func* FUNC3 (struct mmc_card*) ; 
 int FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 

__attribute__((used)) static int FUNC7(struct mmc_card *card, unsigned int fn)
{
	int ret;
	struct sdio_func *func;

	if (FUNC2(fn > SDIO_MAX_FUNCS))
		return -EINVAL;

	func = FUNC3(card);
	if (FUNC0(func))
		return FUNC1(func);

	func->num = fn;

	if (!(card->quirks & MMC_QUIRK_NONSTD_SDIO)) {
		ret = FUNC4(func);
		if (ret)
			goto fail;

		ret = FUNC5(func);
		if (ret)
			goto fail;
	} else {
		func->vendor = func->card->cis.vendor;
		func->device = func->card->cis.device;
		func->max_blksize = func->card->cis.blksize;
	}

	card->sdio_func[fn - 1] = func;

	return 0;

fail:
	/*
	 * It is okay to remove the function here even though we hold
	 * the host lock as we haven't registered the device yet.
	 */
	FUNC6(func);
	return ret;
}