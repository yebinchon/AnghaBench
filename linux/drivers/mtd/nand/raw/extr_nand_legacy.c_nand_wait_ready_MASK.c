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
struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned long) ; 
 scalar_t__ oops_in_progress ; 
 void FUNC3 (struct nand_chip*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (struct nand_chip*) ; 
 scalar_t__ FUNC6 (struct nand_chip*) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

void FUNC8(struct nand_chip *chip)
{
	unsigned long timeo = 400;

	if (FUNC1() || oops_in_progress)
		return FUNC3(chip, timeo);

	/* Wait until command is processed or timeout occurs */
	timeo = jiffies + FUNC2(timeo);
	do {
		if (chip->legacy.dev_ready(chip))
			return;
		FUNC0();
	} while (FUNC7(jiffies, timeo));

	if (!chip->legacy.dev_ready(chip))
		FUNC4("timeout while waiting for chip to become ready\n");
}