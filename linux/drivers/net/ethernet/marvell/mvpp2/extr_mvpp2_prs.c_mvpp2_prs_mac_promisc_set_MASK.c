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
struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
typedef  int /*<<< orphan*/  pe ;
typedef  enum mvpp2_prs_l2_cast { ____Placeholder_mvpp2_prs_l2_cast } mvpp2_prs_l2_cast ;
struct TYPE_2__ {scalar_t__ valid; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int MVPP2_PE_MAC_MC_PROMISCUOUS ; 
 int MVPP2_PE_MAC_UC_PROMISCUOUS ; 
 int /*<<< orphan*/  MVPP2_PRS_CAST_MASK ; 
 int MVPP2_PRS_L2_UNI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_DSA ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_MAC ; 
 unsigned char MVPP2_PRS_MCAST_VAL ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L2_CAST_MASK ; 
 unsigned int MVPP2_PRS_RI_L2_MCAST ; 
 unsigned int MVPP2_PRS_RI_L2_UCAST ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 unsigned char MVPP2_PRS_UCAST_VAL ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,struct mvpp2_prs_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int,int) ; 

void FUNC11(struct mvpp2 *priv, int port,
			       enum mvpp2_prs_l2_cast l2_cast, bool add)
{
	struct mvpp2_prs_entry pe;
	unsigned char cast_match;
	unsigned int ri;
	int tid;

	if (l2_cast == MVPP2_PRS_L2_UNI_CAST) {
		cast_match = MVPP2_PRS_UCAST_VAL;
		tid = MVPP2_PE_MAC_UC_PROMISCUOUS;
		ri = MVPP2_PRS_RI_L2_UCAST;
	} else {
		cast_match = MVPP2_PRS_MCAST_VAL;
		tid = MVPP2_PE_MAC_MC_PROMISCUOUS;
		ri = MVPP2_PRS_RI_L2_MCAST;
	}

	/* promiscuous mode - Accept unknown unicast or multicast packets */
	if (priv->prs_shadow[tid].valid) {
		FUNC2(priv, &pe, tid);
	} else {
		FUNC0(&pe, 0, sizeof(pe));
		FUNC8(&pe, MVPP2_PRS_LU_MAC);
		pe.index = tid;

		/* Continue - set next lookup */
		FUNC4(&pe, MVPP2_PRS_LU_DSA);

		/* Set result info bits */
		FUNC5(&pe, ri, MVPP2_PRS_RI_L2_CAST_MASK);

		/* Match UC or MC addresses */
		FUNC7(&pe, 0, cast_match,
					     MVPP2_PRS_CAST_MASK);

		/* Shift to ethertype */
		FUNC6(&pe, 2 * ETH_ALEN,
					 MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

		/* Mask all ports */
		FUNC9(&pe, 0);

		/* Update shadow table */
		FUNC3(priv, pe.index, MVPP2_PRS_LU_MAC);
	}

	/* Update port mask */
	FUNC10(&pe, port, add);

	FUNC1(priv, &pe);
}