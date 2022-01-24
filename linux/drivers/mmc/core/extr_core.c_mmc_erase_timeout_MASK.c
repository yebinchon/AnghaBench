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
struct mmc_card {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mmc_card*) ; 
 unsigned int FUNC1 (struct mmc_card*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct mmc_card*,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(struct mmc_card *card,
				      unsigned int arg,
				      unsigned int qty)
{
	if (FUNC0(card))
		return FUNC2(card, arg, qty);
	else
		return FUNC1(card, arg, qty);
}