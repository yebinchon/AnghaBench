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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ (* dev_ready ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int NAND_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (unsigned long) ; 
 int FUNC4 (struct nand_chip*,int*,int,int) ; 
 int FUNC5 (struct nand_chip*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ oops_in_progress ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*,unsigned long) ; 
 scalar_t__ FUNC8 (struct nand_chip*) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *chip)
{

	unsigned long timeo = 400;
	u8 status;
	int ret;

	/*
	 * Apply this short delay always to ensure that we do wait tWB in any
	 * case on any machine.
	 */
	FUNC6(100);

	ret = FUNC5(chip, NULL);
	if (ret)
		return ret;

	if (FUNC2() || oops_in_progress)
		FUNC7(chip, timeo);
	else {
		timeo = jiffies + FUNC3(timeo);
		do {
			if (chip->legacy.dev_ready) {
				if (chip->legacy.dev_ready(chip))
					break;
			} else {
				ret = FUNC4(chip, &status,
							sizeof(status), true);
				if (ret)
					return ret;

				if (status & NAND_STATUS_READY)
					break;
			}
			FUNC1();
		} while (FUNC9(jiffies, timeo));
	}

	ret = FUNC4(chip, &status, sizeof(status), true);
	if (ret)
		return ret;

	/* This can happen if in case of timeout or buggy dev_ready */
	FUNC0(!(status & NAND_STATUS_READY));
	return status;
}