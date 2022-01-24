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
struct mvpp2_prs_entry {int* sram; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_OFFS ; 

__attribute__((used)) static int FUNC2(struct mvpp2_prs_entry *pe)
{
	u8 bits;
	/* ai is stored on bits 90->97; so it spreads across two u32 */
	int ai_off = FUNC1(MVPP2_PRS_SRAM_AI_OFFS);
	int ai_shift = FUNC0(MVPP2_PRS_SRAM_AI_OFFS);

	bits = (pe->sram[ai_off] >> ai_shift) |
	       (pe->sram[ai_off + 1] << (32 - ai_shift));

	return bits;
}