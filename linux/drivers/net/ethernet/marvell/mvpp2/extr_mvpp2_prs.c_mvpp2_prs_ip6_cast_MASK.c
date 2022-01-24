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
 int /*<<< orphan*/  MVPP2_PRS_IPV6_MC ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_MC_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_IPV6_NO_EXT_AI_BIT ; 
 unsigned short MVPP2_PRS_L3_MULTI_CAST ; 
 int /*<<< orphan*/  MVPP2_PRS_LU_IP6 ; 
 int /*<<< orphan*/  MVPP2_PRS_PORT_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_ADDR_MASK ; 
 int /*<<< orphan*/  MVPP2_PRS_RI_L3_MCAST ; 
 int /*<<< orphan*/  MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2*,struct mvpp2_prs_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_prs_entry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mvpp2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mvpp2 *priv, unsigned short l3_cast)
{
	struct mvpp2_prs_entry pe;
	int tid;

	if (l3_cast != MVPP2_PRS_L3_MULTI_CAST)
		return -EINVAL;

	tid = FUNC9(priv, MVPP2_PE_FIRST_FREE_TID,
					MVPP2_PE_LAST_FREE_TID);
	if (tid < 0)
		return tid;

	FUNC0(&pe, 0, sizeof(pe));
	FUNC10(&pe, MVPP2_PRS_LU_IP6);
	pe.index = tid;

	/* Finished: go to flowid generation */
	FUNC4(&pe, MVPP2_PRS_LU_IP6);
	FUNC5(&pe, MVPP2_PRS_RI_L3_MCAST,
				 MVPP2_PRS_RI_L3_ADDR_MASK);
	FUNC3(&pe, MVPP2_PRS_IPV6_NO_EXT_AI_BIT,
				 MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Shift back to IPv6 NH */
	FUNC6(&pe, -18, MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD);

	FUNC8(&pe, 0, MVPP2_PRS_IPV6_MC,
				     MVPP2_PRS_IPV6_MC_MASK);
	FUNC7(&pe, 0, MVPP2_PRS_IPV6_NO_EXT_AI_BIT);
	/* Unmask all ports */
	FUNC11(&pe, MVPP2_PRS_PORT_MASK);

	/* Update shadow table and hw entry */
	FUNC2(priv, pe.index, MVPP2_PRS_LU_IP6);
	FUNC1(priv, &pe);

	return 0;
}