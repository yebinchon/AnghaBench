#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sec_feature_support; } ;
struct TYPE_5__ {int cmdclass; } ;
struct mmc_card {unsigned int erase_size; scalar_t__ eg_boundary; TYPE_3__ ext_csd; TYPE_2__ csd; TYPE_1__* host; } ;
struct TYPE_4__ {int caps; } ;

/* Variables and functions */
 int CCC_ERASE ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EXT_CSD_SEC_ER_EN ; 
 int EXT_CSD_SEC_GB_CL_EN ; 
 int MMC_CAP_ERASE ; 
 unsigned int MMC_ERASE_ARG ; 
 unsigned int MMC_SECURE_ARGS ; 
 unsigned int MMC_SECURE_ERASE_ARG ; 
 unsigned int MMC_TRIM_ARGS ; 
 unsigned int SD_DISCARD_ARG ; 
 unsigned int SD_ERASE_ARG ; 
 unsigned int FUNC0 (struct mmc_card*,unsigned int*,unsigned int*,unsigned int) ; 
 scalar_t__ FUNC1 (struct mmc_card*) ; 
 scalar_t__ FUNC2 (struct mmc_card*) ; 
 int FUNC3 (struct mmc_card*,unsigned int,unsigned int,unsigned int) ; 

int FUNC4(struct mmc_card *card, unsigned int from, unsigned int nr,
	      unsigned int arg)
{
	unsigned int rem, to = from + nr;
	int err;

	if (!(card->host->caps & MMC_CAP_ERASE) ||
	    !(card->csd.cmdclass & CCC_ERASE))
		return -EOPNOTSUPP;

	if (!card->erase_size)
		return -EOPNOTSUPP;

	if (FUNC2(card) && arg != SD_ERASE_ARG && arg != SD_DISCARD_ARG)
		return -EOPNOTSUPP;

	if (FUNC1(card) && (arg & MMC_SECURE_ARGS) &&
	    !(card->ext_csd.sec_feature_support & EXT_CSD_SEC_ER_EN))
		return -EOPNOTSUPP;

	if (FUNC1(card) && (arg & MMC_TRIM_ARGS) &&
	    !(card->ext_csd.sec_feature_support & EXT_CSD_SEC_GB_CL_EN))
		return -EOPNOTSUPP;

	if (arg == MMC_SECURE_ERASE_ARG) {
		if (from % card->erase_size || nr % card->erase_size)
			return -EINVAL;
	}

	if (arg == MMC_ERASE_ARG)
		nr = FUNC0(card, &from, &to, nr);

	if (nr == 0)
		return 0;

	if (to <= from)
		return -EINVAL;

	/* 'from' and 'to' are inclusive */
	to -= 1;

	/*
	 * Special case where only one erase-group fits in the timeout budget:
	 * If the region crosses an erase-group boundary on this particular
	 * case, we will be trimming more than one erase-group which, does not
	 * fit in the timeout budget of the controller, so we need to split it
	 * and call mmc_do_erase() twice if necessary. This special case is
	 * identified by the card->eg_boundary flag.
	 */
	rem = card->erase_size - (from % card->erase_size);
	if ((arg & MMC_TRIM_ARGS) && (card->eg_boundary) && (nr > rem)) {
		err = FUNC3(card, from, from + rem - 1, arg);
		from += rem;
		if ((err) || (to <= from))
			return err;
	}

	return FUNC3(card, from, to, arg);
}