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
struct mmc_card {int /*<<< orphan*/  host; scalar_t__ reenable_cmdq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_card*) ; 

__attribute__((used)) static void FUNC5(struct mmc_card *card)
{
	if (card->reenable_cmdq) {
		FUNC0(card->host);
		FUNC1(card);
		FUNC2(card->host);
	}
	FUNC4(card);
	FUNC3(card);
}