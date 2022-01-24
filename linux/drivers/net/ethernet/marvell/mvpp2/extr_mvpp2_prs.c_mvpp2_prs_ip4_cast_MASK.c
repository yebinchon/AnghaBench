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
struct mvpp2_prs_entry {int index; } ;
struct mvpp2 {int dummy; } ;
typedef  int /*<<< orphan*/  pe ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MVPP2_PE_FIRST_FREE_TID ; 
 int /*<<< orphan*/  MVPP2_PE_LAST_FREE_TID ; 
 int MVPP2_PRS_IPV4_BC_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV4_DIP_AI_BIT ; 
 int MVPP2_PRS_IPV4_MC ; 
 int MVPP2_PRS_IPV4_MC_MASK ; 
#define  MVPP2_PRS_L3_BROAD_CAST 129 
#define  MVPP2_PRS_L3_MULTI_CAST 128 
 int /*<<< orphan*/  MVPP2_PRS_LU_FLOWS ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP4 ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_ADDR_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_BCAST ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_MCAST ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_LU_GEN_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int,int,int) ; 
 int FUNC8 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct mvpp2 *priv, unsigned short l3_cast)
{
	struct mvpp2_prs_entry pe;
	int mask, tid;

	tid = FUNC8(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC9(&pe, MVPP2_PRS_LU_IP4);
	pe.index = tid;

	switch (l3_cast) {
	case MVPP2_PRS_L3_MULTI_CAST:
		FUNC7(&pe, 0, MVPP2_PRS_IPV4_MC,
					     MVPP2_PRS_IPV4_MC_MASK);
		FUNC5(&pe, MVPP2_PRS_RI_L3_MCAST,
					 MVPP2_PRS_RI_L3_ADDR_MASK);
		break;
	case  MVPP2_PRS_L3_BROAD_CAST:
		mask = MVPP2_PRS_IPV4_BC_MASK;
		FUNC7(&pe, 0, mask, mask);
		FUNC7(&pe, 1, mask, mask);
		FUNC7(&pe, 2, mask, mask);
		FUNC7(&pe, 3, mask, mask);
		FUNC5(&pe, MVPP2_PRS_RI_L3_BCAST,
					 MVPP2_PRS_RI_L3_ADDR_MASK);
		break;
	default:
		return -EINVAL;
	}

	/* Finished: go to flowid generation */
	FUNC4(&pe, MVPP2_PRS_LU_FLOWS);
	FUNC3(&pe, MVPP2_PRS_SRAM_LU_GEN_BIT, 1);

	FUNC6(&pe, MVPP2_PRS_IPV4_DIP_AI_BIT,
				 MVPP2_PRS_IPV4_DIP_AI_BIT);
	/* Unmask all ports */
	FUNC10(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_IP4);
	FUNC1(priv, &pe);

	return 0;
}