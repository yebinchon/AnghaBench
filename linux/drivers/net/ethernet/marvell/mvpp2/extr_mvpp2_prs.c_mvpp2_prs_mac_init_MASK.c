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
 int /*<<< orphan*/  MVPP2_PE_MAC_NON_PROMISCUOUS ; 
 int /*<<< orphan*/  MVPP2_PRS_L2_MULTI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_L2_UNI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MAC ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_DROP_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct mvpp2 *priv)
{
	struct mvpp2_prs_entry pe;

	FUNC0(&pe, 0, sizeof(pe));

	/* Non-promiscuous mode for all ports - DROP unknown packets */
	pe.index = MVPP2_PE_MAC_NON_PROMISCUOUS;
	FUNC8(&pe, MVPP2_PRS_LU_MAC);

	FUNC7(&pe, MVPP2_PRS_RI_DROP_MASK,
				 MVPP2_PRS_RI_DROP_MASK);
	FUNC5(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
	FUNC6(&pe, MVPP2_PRS_LU_FLOWS);

	/* Unmask all ports */
	FUNC9(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC4(priv, pe.index, MVPP2_PRS_LU_MAC);
	FUNC1(priv, &pe);

	/* Create dummy entries for drop all and promiscuous modes */
	FUNC2(priv, 0, false);
	FUNC3(priv, 0, MVPP2_PRS_L2_UNI_CAST, false);
	FUNC3(priv, 0, MVPP2_PRS_L2_MULTI_CAST, false);
}