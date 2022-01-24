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
 int /*<<< orphan*/  MVPP2_PRS_SRAM_NEXT_LU_MASK ; 
 int MVPP2_PRS_SRAM_NEXT_LU_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct mvpp2_prs_entry *pe,
				       unsigned int lu)
{
	int sram_next_off = MVPP2_PRS_SRAM_NEXT_LU_OFFS;

	FUNC0(pe, sram_next_off,
				  MVPP2_PRS_SRAM_NEXT_LU_MASK);
	FUNC1(pe, sram_next_off, lu);
}