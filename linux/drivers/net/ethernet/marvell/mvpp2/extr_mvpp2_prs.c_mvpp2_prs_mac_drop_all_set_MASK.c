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
struct mvpp2_prs_entry {size_t index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 size_t MVPP2_PE_DROP_ALL ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MAC ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_DROP_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int,int) ; 

__attribute__((used)) static void FUNC10(struct mvpp2 *priv, int port, bool add)
{
	struct mvpp2_prs_entry pe;

	if (priv->prs_shadow[MVPP2_PE_DROP_ALL].valid) {
		/* Entry exist - update port only */
		FUNC2(priv, &pe, MVPP2_PE_DROP_ALL);
	} else {
		/* Entry doesn't exist - create new */
		FUNC0(&pe, 0, sizeof(pe));
		FUNC7(&pe, MVPP2_PRS_LU_MAC);
		pe.index = MVPP2_PE_DROP_ALL;

		/* Non-promiscuous mode for all ports - DROP unknown packets */
		FUNC6(&pe, MVPP2_PRS_RI_DROP_MASK,
					 MVPP2_PRS_RI_DROP_MASK);

		FUNC4(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);
		FUNC5(&pe, MVPP2_PRS_LU_FLOWS);

		/* Update shadow table */
		FUNC3(priv, pe.index, MVPP2_PRS_LU_MAC);

		/* Mask all ports */
		FUNC8(&pe, 0);
	}

	/* Update port mask */
	FUNC9(&pe, port, add);

	FUNC1(priv, &pe);
}