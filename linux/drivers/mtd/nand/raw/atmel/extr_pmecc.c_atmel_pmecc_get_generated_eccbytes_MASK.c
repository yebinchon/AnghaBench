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
typedef  int /*<<< orphan*/  u8 ;
struct atmel_pmecc_user {int eccbytes; struct atmel_pmecc* pmecc; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct atmel_pmecc {TYPE_1__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(struct atmel_pmecc_user *user,
					int sector, void *ecc)
{
	struct atmel_pmecc *pmecc = user->pmecc;
	u8 *ptr = ecc;
	int i;

	for (i = 0; i < user->eccbytes; i++)
		ptr[i] = FUNC1(pmecc->regs.base +
				       FUNC0(sector, i));
}