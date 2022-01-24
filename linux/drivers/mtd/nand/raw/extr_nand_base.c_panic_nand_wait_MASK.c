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
 int FUNC1 (struct nand_chip*,int*,int,int) ; 
 scalar_t__ FUNC2 (struct nand_chip*) ; 

void FUNC3(struct nand_chip *chip, unsigned long timeo)
{
	int i;
	for (i = 0; i < timeo; i++) {
		if (chip->legacy.dev_ready) {
			if (chip->legacy.dev_ready(chip))
				break;
		} else {
			int ret;
			u8 status;

			ret = FUNC1(chip, &status, sizeof(status),
						true);
			if (ret)
				return;

			if (status & NAND_STATUS_READY)
				break;
		}
		FUNC0(1);
	}
}