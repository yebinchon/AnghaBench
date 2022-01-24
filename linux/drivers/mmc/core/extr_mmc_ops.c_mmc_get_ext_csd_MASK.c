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
typedef  int /*<<< orphan*/  u8 ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMC_SEND_EXT_CSD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*) ; 
 int FUNC3 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct mmc_card *card, u8 **new_ext_csd)
{
	int err;
	u8 *ext_csd;

	if (!card || !new_ext_csd)
		return -EINVAL;

	if (!FUNC2(card))
		return -EOPNOTSUPP;

	/*
	 * As the ext_csd is so large and mostly unused, we don't store the
	 * raw block in mmc_card.
	 */
	ext_csd = FUNC1(512, GFP_KERNEL);
	if (!ext_csd)
		return -ENOMEM;

	err = FUNC3(card, card->host, MMC_SEND_EXT_CSD, ext_csd,
				512);
	if (err)
		FUNC0(ext_csd);
	else
		*new_ext_csd = ext_csd;

	return err;
}