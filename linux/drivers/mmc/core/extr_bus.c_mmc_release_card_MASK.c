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
struct mmc_card {struct mmc_card* info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_card*) ; 
 struct mmc_card* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mmc_card *card = FUNC1(dev);

	FUNC2(card);

	FUNC0(card->info);

	FUNC0(card);
}