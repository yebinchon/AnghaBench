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
 int /*<<< orphan*/  MVPP2_PE_DSA_DEFAULT ; 
 int /*<<< orphan*/  MVPP2_PRS_DSA ; 
 int /*<<< orphan*/  MVPP2_PRS_EDSA ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_DSA ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MAC ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VLAN ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_PRS_TAGGED ; 
 int /*<<< orphan*/  MVPP2_PRS_UNTAGGED ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;

	/* None tagged EDSA entry - place holder */
	FUNC2(priv, 0, false, MVPP2_PRS_UNTAGGED,
			      MVPP2_PRS_EDSA);

	/* Tagged EDSA entry - place holder */
	FUNC2(priv, 0, false, MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);

	/* None tagged DSA entry - place holder */
	FUNC2(priv, 0, false, MVPP2_PRS_UNTAGGED,
			      MVPP2_PRS_DSA);

	/* Tagged DSA entry - place holder */
	FUNC2(priv, 0, false, MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);

	/* None tagged EDSA ethertype entry - place holder*/
	FUNC1(priv, 0, false,
					MVPP2_PRS_UNTAGGED, MVPP2_PRS_EDSA);

	/* Tagged EDSA ethertype entry - place holder*/
	FUNC1(priv, 0, false,
					MVPP2_PRS_TAGGED, MVPP2_PRS_EDSA);

	/* None tagged DSA ethertype entry */
	FUNC1(priv, 0, true,
					MVPP2_PRS_UNTAGGED, MVPP2_PRS_DSA);

	/* Tagged DSA ethertype entry */
	FUNC1(priv, 0, true,
					MVPP2_PRS_TAGGED, MVPP2_PRS_DSA);

	/* Set default entry, in case DSA or EDSA tag not found */
	FUNC0(&pe, 0, sizeof(pe));
	FUNC8(&pe, MVPP2_PRS_LU_DSA);
	pe.index = MVPP2_PE_DSA_DEFAULT;
	FUNC6(&pe, MVPP2_PRS_LU_VLAN);

	/* Shift 0 bytes */
	FUNC7(&pe, 0, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);
	FUNC4(priv, pe.index, MVPP2_PRS_LU_MAC);

	/* Clear all sram ai bits for next iteration */
	FUNC5(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

	/* Unmask all ports */
	FUNC9(&pe, MVPP2_PRS_PORT_MASK);

	FUNC3(priv, &pe);
}