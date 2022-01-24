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
struct TYPE_2__ {int /*<<< orphan*/ * mmc_callback_data; int /*<<< orphan*/ * mmc_callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENELAUS_MMC_S1CD_IRQ ; 
 int /*<<< orphan*/  MENELAUS_MMC_S1D1_IRQ ; 
 int /*<<< orphan*/  MENELAUS_MMC_S2CD_IRQ ; 
 int /*<<< orphan*/  MENELAUS_MMC_S2D1_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* the_menelaus ; 

void FUNC1(void)
{
	FUNC0(MENELAUS_MMC_S1CD_IRQ);
	FUNC0(MENELAUS_MMC_S2CD_IRQ);
	FUNC0(MENELAUS_MMC_S1D1_IRQ);
	FUNC0(MENELAUS_MMC_S2D1_IRQ);

	the_menelaus->mmc_callback = NULL;
	the_menelaus->mmc_callback_data = NULL;
}