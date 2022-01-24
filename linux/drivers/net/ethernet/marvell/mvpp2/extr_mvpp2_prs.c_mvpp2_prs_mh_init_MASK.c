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
struct mvpp2_prs_entry {int /*<<< orphan*/  index; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_MH_SIZE ; 
 int /*<<< orphan*/  MVPP2_PE_MH_DEFAULT ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MAC ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MH ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;

	FUNC0(&pe, 0, sizeof(pe));

	pe.index = MVPP2_PE_MH_DEFAULT;
	FUNC5(&pe, MVPP2_PRS_LU_MH);
	FUNC4(&pe, MVPP2_MH_SIZE,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	FUNC3(&pe, MVPP2_PRS_LU_MAC);

	/* Unmask all ports */
	FUNC6(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_MH);
	FUNC1(priv, &pe);
}