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

/* Variables and functions */
 int /*<<< orphan*/  ECC_ERR_STAT_OFFSET ; 
 int /*<<< orphan*/  INT_ERR_ACK_OFFSET ; 
 int /*<<< orphan*/  INT_ERR_STAT_OFFSET ; 
 int /*<<< orphan*/  MEM_RESET_OFFSET ; 
 int ONENAND_MEM_RESET_COLD ; 
 int RST_CMP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned long timeout = 0x10000;
	int stat;

	FUNC1(ONENAND_MEM_RESET_COLD, MEM_RESET_OFFSET);
	while (1 && timeout--) {
		stat = FUNC0(INT_ERR_STAT_OFFSET);
		if (stat & RST_CMP)
			break;
	}
	stat = FUNC0(INT_ERR_STAT_OFFSET);
	FUNC1(stat, INT_ERR_ACK_OFFSET);

	/* Clear interrupt */
	FUNC1(0x0, INT_ERR_ACK_OFFSET);
	/* Clear the ECC status */
	FUNC1(0x0, ECC_ERR_STAT_OFFSET);
}