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
struct mvpp2_prs_entry {int index; int* tcam; void** sram; } ;
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_IDX_REG ; 
 int MVPP2_PRS_SRAM_WORDS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MVPP2_PRS_TCAM_ENTRY_INVALID ; 
 int /*<<< orphan*/  MVPP2_PRS_TCAM_IDX_REG ; 
 int MVPP2_PRS_TCAM_INV_MASK ; 
 size_t MVPP2_PRS_TCAM_INV_WORD ; 
 int MVPP2_PRS_TCAM_SRAM_SIZE ; 
 int MVPP2_PRS_TCAM_WORDS ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (struct mvpp2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mvpp2 *priv, struct mvpp2_prs_entry *pe,
			   int tid)
{
	int i;

	if (tid > MVPP2_PRS_TCAM_SRAM_SIZE - 1)
		return -EINVAL;

	FUNC2(pe, 0, sizeof(*pe));
	pe->index = tid;

	/* Write tcam index - indirect access */
	FUNC4(priv, MVPP2_PRS_TCAM_IDX_REG, pe->index);

	pe->tcam[MVPP2_PRS_TCAM_INV_WORD] = FUNC3(priv,
			      FUNC1(MVPP2_PRS_TCAM_INV_WORD));
	if (pe->tcam[MVPP2_PRS_TCAM_INV_WORD] & MVPP2_PRS_TCAM_INV_MASK)
		return MVPP2_PRS_TCAM_ENTRY_INVALID;

	for (i = 0; i < MVPP2_PRS_TCAM_WORDS; i++)
		pe->tcam[i] = FUNC3(priv, FUNC1(i));

	/* Write sram index - indirect access */
	FUNC4(priv, MVPP2_PRS_SRAM_IDX_REG, pe->index);
	for (i = 0; i < MVPP2_PRS_SRAM_WORDS; i++)
		pe->sram[i] = FUNC3(priv, FUNC0(i));

	return 0;
}