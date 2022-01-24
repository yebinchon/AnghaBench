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
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDIO_BUS_CD_DISABLE ; 
 int /*<<< orphan*/  SDIO_CCCR_IF ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_card*) ; 
 int FUNC1 (struct mmc_card*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mmc_card *card)
{
	int ret;
	u8 ctrl;

	if (!FUNC0(card))
		return 0;

	ret = FUNC1(card, 0, 0, SDIO_CCCR_IF, 0, &ctrl);
	if (ret)
		return ret;

	ctrl |= SDIO_BUS_CD_DISABLE;

	return FUNC1(card, 1, 0, SDIO_CCCR_IF, ctrl, NULL);
}