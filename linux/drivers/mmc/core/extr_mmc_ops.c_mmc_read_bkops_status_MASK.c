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
typedef  void* u8 ;
struct TYPE_2__ {void* raw_exception_status; void* raw_bkops_status; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;

/* Variables and functions */
 size_t EXT_CSD_BKOPS_STATUS ; 
 size_t EXT_CSD_EXP_EVENTS_STATUS ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (struct mmc_card*,void***) ; 

__attribute__((used)) static int FUNC2(struct mmc_card *card)
{
	int err;
	u8 *ext_csd;

	err = FUNC1(card, &ext_csd);
	if (err)
		return err;

	card->ext_csd.raw_bkops_status = ext_csd[EXT_CSD_BKOPS_STATUS];
	card->ext_csd.raw_exception_status = ext_csd[EXT_CSD_EXP_EVENTS_STATUS];
	FUNC0(ext_csd);
	return 0;
}