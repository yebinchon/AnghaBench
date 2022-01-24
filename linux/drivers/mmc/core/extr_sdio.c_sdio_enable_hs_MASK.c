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
struct mmc_card {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ MMC_TYPE_SDIO ; 
 int FUNC0 (struct mmc_card*) ; 
 int FUNC1 (struct mmc_card*,int) ; 

__attribute__((used)) static int FUNC2(struct mmc_card *card)
{
	int ret;

	ret = FUNC1(card, true);
	if (ret <= 0 || card->type == MMC_TYPE_SDIO)
		return ret;

	ret = FUNC0(card);
	if (ret <= 0)
		FUNC1(card, false);

	return ret;
}