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
typedef  int u8 ;
struct nand_chip {int dummy; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int NAND_STATUS_READY ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct nand_chip*,int*,int,int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip, unsigned long timeo)
{
	int ret;

	timeo = jiffies + FUNC0(timeo);
	do {
		u8 status;

		ret = FUNC1(chip, &status, sizeof(status), true);
		if (ret)
			return;

		if (status & NAND_STATUS_READY)
			break;
		FUNC3();
	} while (FUNC2(jiffies, timeo));
}