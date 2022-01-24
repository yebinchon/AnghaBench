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
struct mvpp2_prs_entry {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int MVPP2_PRS_SRAM_RI_CTRL_BITS ; 
 scalar_t__ MVPP2_PRS_SRAM_RI_CTRL_OFFS ; 
 scalar_t__ MVPP2_PRS_SRAM_RI_OFFS ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct mvpp2_prs_entry *pe,
				     unsigned int bits, unsigned int mask)
{
	unsigned int i;

	for (i = 0; i < MVPP2_PRS_SRAM_RI_CTRL_BITS; i++) {
		if (!(mask & FUNC0(i)))
			continue;

		if (bits & FUNC0(i))
			FUNC2(pe, MVPP2_PRS_SRAM_RI_OFFS + i,
						1);
		else
			FUNC1(pe,
						  MVPP2_PRS_SRAM_RI_OFFS + i,
						  1);

		FUNC2(pe, MVPP2_PRS_SRAM_RI_CTRL_OFFS + i, 1);
	}
}