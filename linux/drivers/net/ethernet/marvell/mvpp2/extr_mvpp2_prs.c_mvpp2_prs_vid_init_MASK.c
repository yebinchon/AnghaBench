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
 int /*<<< orphan*/  MVPP2_PE_VID_EDSA_FLTR_DEFAULT ; 
 int /*<<< orphan*/  MVPP2_PE_VID_FLTR_DEFAULT ; 
 int /*<<< orphan*/  MVPP2_PRS_EDSA_VID_AI_BIT ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_L2 ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_VID ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_AI_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  MVPP2_VLAN_TAG_EDSA_LEN ; 
 int /*<<< orphan*/  MVPP2_VLAN_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;

	FUNC0(&pe, 0, sizeof(pe));

	/* Set default vid entry */
	pe.index = MVPP2_PE_VID_FLTR_DEFAULT;
	FUNC7(&pe, MVPP2_PRS_LU_VID);

	FUNC6(&pe, 0, MVPP2_PRS_EDSA_VID_AI_BIT);

	/* Skip VLAN header - Set offset to 4 bytes */
	FUNC5(&pe, MVPP2_VLAN_TAG_LEN,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	/* Clear all ai bits for next iteration */
	FUNC3(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

	FUNC4(&pe, MVPP2_PRS_LU_L2);

	/* Unmask all ports */
	FUNC8(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_VID);
	FUNC1(priv, &pe);

	/* Set default vid entry for extended DSA*/
	FUNC0(&pe, 0, sizeof(pe));

	/* Set default vid entry */
	pe.index = MVPP2_PE_VID_EDSA_FLTR_DEFAULT;
	FUNC7(&pe, MVPP2_PRS_LU_VID);

	FUNC6(&pe, MVPP2_PRS_EDSA_VID_AI_BIT,
				 MVPP2_PRS_EDSA_VID_AI_BIT);

	/* Skip VLAN header - Set offset to 8 bytes */
	FUNC5(&pe, MVPP2_VLAN_TAG_EDSA_LEN,
				 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	/* Clear all ai bits for next iteration */
	FUNC3(&pe, 0, MVPP2_PRS_SRAM_AI_MASK);

	FUNC4(&pe, MVPP2_PRS_LU_L2);

	/* Unmask all ports */
	FUNC8(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_VID);
	FUNC1(priv, &pe);
}