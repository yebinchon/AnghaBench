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
struct da9052 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_TBAT_RES_REG ; 
 int FUNC0 (struct da9052*,int /*<<< orphan*/ ) ; 
 int* tbat_lookup ; 

int FUNC1(struct da9052 *da9052)
{
	int tbat;

	tbat = FUNC0(da9052, DA9052_TBAT_RES_REG);
	if (tbat <= 0)
		return tbat;

	/* ARRAY_SIZE check is not needed since TBAT is a 8-bit register */
	return tbat_lookup[tbat - 1];
}